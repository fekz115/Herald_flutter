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
import 'package:Herald_flutter/services/mock_load_service.dart';
import 'package:Herald_flutter/services/train_load_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:built_redux/built_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

void main() {
  runApp(HeraldApp());
}

class HeraldApp extends StatefulWidget {
  final store = Store<AppState, AppStateBuilder, AppActions>(
    reducerBuilder.build(),
    AppState((b) => {
          b
            ..trainsScreenState = TrainsLoadingScreenState()
            ..initialScreenState = InitialScreenState((b) => {
                  b
                    ..arriveStationTextInputState =
                        StationTextInputState((b) => b..value = "").toBuilder()
                    ..departStationTextInputState =
                        StationTextInputState((b) => b..value = "").toBuilder()
                    ..date = DateTime.now()
                }).toBuilder()
            ..settingsState = SettingsState((b) => {
                  b
                    ..interfaceSettingsState =
                        InterfaceSettingsState((b) => {b..useDarkTheme = true})
                            .toBuilder()
                }).toBuilder()
        }),
    AppActions(),
    middleware: [
      createMiddleware(TrainLoadService(MockLoadService(), HtmlParserService()))
    ],
  );

  @override
  State<StatefulWidget> createState() {
    return HeraldAppState();
  }
}

class HeraldAppState extends State<HeraldApp> {
  Store<AppState, AppStateBuilder, AppActions> store;

  HeraldAppState();

  @override
  void initState() {
    store = widget.store;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReduxProvider(
      store: store,
      child: InterfaceStateListener(),
    );
  }
}

class InterfaceStateListener
    extends StoreConnector<AppState, AppActions, InterfaceSettingsState> {
  Brightness _getBrightness(InterfaceSettingsState state) =>
      state.useDarkTheme ? Brightness.dark : Brightness.light;

  @override
  Widget build(
      BuildContext context, InterfaceSettingsState state, AppActions actions) {
    return MaterialApp(
      theme: ThemeData(
        brightness: _getBrightness(state),
      ),
      home: Scaffold(
        body: ExtendedNavigator<Router>(
          router: Router(),
          name: "mainNav",
        ),
      ),
    );
  }

  @override
  InterfaceSettingsState connect(AppState state) =>
      state.settingsState.interfaceSettingsState;
}
