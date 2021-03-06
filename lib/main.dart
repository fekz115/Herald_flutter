import 'package:Herald_flutter/i18n.dart';
import 'package:Herald_flutter/navigation.gr.dart';
import 'package:Herald_flutter/redux/actions.dart';
import 'package:Herald_flutter/redux/app_state.dart';
import 'package:Herald_flutter/redux/middleware/middleware.dart';
import 'package:Herald_flutter/redux/reducer.dart';
import 'package:Herald_flutter/redux/state/initial_screen_state.dart';
import 'package:Herald_flutter/redux/state/interface_settings_state.dart';
import 'package:Herald_flutter/redux/state/settings_state.dart';
import 'package:Herald_flutter/redux/state/station_text_input_state.dart';
import 'package:Herald_flutter/redux/state/trains_screen_state.dart';
import 'package:Herald_flutter/services/html_parser_service.dart';
import 'package:Herald_flutter/services/http_load_service.dart';
import 'package:Herald_flutter/services/persistence/hive/hive_persistence_service.dart';
import 'package:Herald_flutter/services/train_load_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:built_redux/built_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(HeraldApp());
}

class HeraldApp extends StatefulWidget {
  HeraldApp({Key key}) : super(key: key);

  final store = Store<AppState, AppStateBuilder, AppActions>(
    reducerBuilder.build(),
    AppState((b) => b
      ..trainsScreenState = TrainsLoadingScreenState()
      ..initialScreenState = InitialScreenState((b) => b
            ..arriveStationTextInputState =
                StationTextInputState((b) => b..value = '').toBuilder()
            ..departStationTextInputState =
                StationTextInputState((b) => b..value = '').toBuilder()
            ..date = DateTime(
                DateTime.now().year, DateTime.now().month, DateTime.now().day))
          .toBuilder()
      ..settingsState = SettingsState((b) => b
            ..interfaceSettingsState = InterfaceSettingsState((b) => b
              ..useDarkTheme = true
              ..selectedCurrency = Currency.BYN
              ..currencyDisplaying = CurrencyDisplaying.LOCAL_NAME).toBuilder())
          .toBuilder()),
    AppActions(),
    middleware: [
      createMiddleware(TrainLoadService(HttpLoadService(), HtmlParserService()),
          HivePersistenceService())
    ],
  );

  @override
  State<StatefulWidget> createState() {
    return HeraldAppState();
  }
}

class HeraldAppState extends State<HeraldApp> {
  HeraldAppState();

  Store<AppState, AppStateBuilder, AppActions> store;

  @override
  void initState() {
    store = widget.store;
    store.actions.appInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReduxProvider(
      store: store,
      child: InterfaceStateListener(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    store.actions.appClose();
  }
}

class InterfaceStateListener
    extends StoreConnector<AppState, AppActions, InterfaceSettingsState> {
  InterfaceStateListener({Key key}) : super(key: key);

  Brightness _getBrightness(InterfaceSettingsState state) =>
      state.useDarkTheme ? Brightness.dark : Brightness.light;

  @override
  Widget build(
      BuildContext context, InterfaceSettingsState state, AppActions actions) {
    return MaterialApp(
      theme: ThemeData(
        brightness: _getBrightness(state),
      ),
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        HeraldLocalizationsDelegate(),
      ],
      supportedLocales: [
        ...HeraldLocalizations.supportedLocales.map((e) => Locale(e)).toList()
      ],
      home: Scaffold(
        body: ExtendedNavigator<HeraldRouter>(
          router: HeraldRouter(),
          name: 'mainNav',
        ),
      ),
    );
  }

  @override
  InterfaceSettingsState connect(AppState state) =>
      state.settingsState.interfaceSettingsState;
}
