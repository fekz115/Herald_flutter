import 'dart:wasm';

import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/redux/actions_args.dart';
import 'package:Herald_flutter/redux/state/interface_settings_state.dart';
import 'package:Herald_flutter/services/service_response.dart';
import 'package:built_redux/built_redux.dart';

part 'actions.g.dart';

abstract class AppActions extends ReduxActions {
  factory AppActions() => _$AppActions();
  AppActions._();

  ActionDispatcher<String> changeDepartStationAction;
  ActionDispatcher<String> changeArriveStationAction;
  ActionDispatcher<DateTime> changeDateAction;
  ActionDispatcher<Void> searchAction;
  ActionDispatcher<ServiceResponse> serviceResponseAction;
  ActionDispatcher<Void> refreshAction;

  ActionDispatcher<Void> showTrainsPage;
  ActionDispatcher<Void> showSettingsPage;
  ActionDispatcher<Void> showInterfaceSettingsPage;
  ActionDispatcher<Void> showBehaviorSettings;
  ActionDispatcher<Void> showCached;
  ActionDispatcher<Void> goBack;

  ActionDispatcher<Void> enableDarkTheme;
  ActionDispatcher<Void> disableDarkTheme;

  ActionDispatcher<Currency> changeCurrency;
  ActionDispatcher<CurrencyDisplaying> changeCurrencyDisplayingMode;

  ActionDispatcher<Void> appInit;
  ActionDispatcher<Void> appClose;

  ActionDispatcher<Void> getCached;
  ActionDispatcher<Find> findCached;
  ActionDispatcher<Find> removeCached;
  ActionDispatcher<DateTime> clearCache;
  ActionDispatcher<SaveFindToPersistanceRequest> save;
  ActionDispatcher<Iterable<Find>> saved;
  ActionDispatcher<Iterable<Train>> found;
  ActionDispatcher<Find> openCached;
}