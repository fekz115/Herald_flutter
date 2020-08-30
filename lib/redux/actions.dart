import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/redux/actions_args.dart';
import 'package:Herald_flutter/redux/state/interface_settings_state.dart';
import 'package:Herald_flutter/services/service_response.dart';
import 'package:built_redux/built_redux.dart';

part 'actions.g.dart';

abstract class AppActions extends ReduxActions {
  ActionDispatcher<String> changeDepartStationAction;
  ActionDispatcher<String> changeArriveStationAction;
  ActionDispatcher<DateTime> changeDateAction;
  ActionDispatcher<Null> searchAction;
  ActionDispatcher<ServiceResponse> serviceResponseAction;
  ActionDispatcher<Null> refreshAction;

  ActionDispatcher<Null> showTrainsPage;
  ActionDispatcher<Null> showSettingsPage;
  ActionDispatcher<Null> showInterfaceSettingsPage;
  ActionDispatcher<Null> showBehaviorSettings;
  ActionDispatcher<Null> showCached;
  ActionDispatcher<Null> goBack;

  ActionDispatcher<Null> enableDarkTheme;
  ActionDispatcher<Null> disableDarkTheme;

  ActionDispatcher<Currency> changeCurrency;
  ActionDispatcher<CurrencyDisplaying> changeCurrencyDisplayingMode;

  ActionDispatcher<Null> appInit;
  ActionDispatcher<Null> appClose;

  ActionDispatcher<Null> getCached;
  ActionDispatcher<Find> findCached;
  ActionDispatcher<Find> removeCached;
  ActionDispatcher<DateTime> clearCache;
  ActionDispatcher<SaveFindToPersistanceRequest> save;
  ActionDispatcher<Iterable<Find>> saved;
  ActionDispatcher<Iterable<Train>> found;
  ActionDispatcher<Find> openCached;

  AppActions._();
  factory AppActions() => new _$AppActions();
}