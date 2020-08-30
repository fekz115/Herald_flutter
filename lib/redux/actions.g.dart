// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actions.dart';

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$AppActions extends AppActions {
  factory _$AppActions() => _$AppActions._();
  _$AppActions._() : super._();

  final changeDepartStationAction =
      ActionDispatcher<String>('AppActions-changeDepartStationAction');
  final changeArriveStationAction =
      ActionDispatcher<String>('AppActions-changeArriveStationAction');
  final changeDateAction =
      ActionDispatcher<DateTime>('AppActions-changeDateAction');
  final searchAction = ActionDispatcher<Null>('AppActions-searchAction');
  final serviceResponseAction =
      ActionDispatcher<ServiceResponse>('AppActions-serviceResponseAction');
  final refreshAction = ActionDispatcher<Null>('AppActions-refreshAction');
  final showTrainsPage = ActionDispatcher<Null>('AppActions-showTrainsPage');
  final showSettingsPage =
      ActionDispatcher<Null>('AppActions-showSettingsPage');
  final showInterfaceSettingsPage =
      ActionDispatcher<Null>('AppActions-showInterfaceSettingsPage');
  final showBehaviorSettings =
      ActionDispatcher<Null>('AppActions-showBehaviorSettings');
  final showCached = ActionDispatcher<Null>('AppActions-showCached');
  final goBack = ActionDispatcher<Null>('AppActions-goBack');
  final enableDarkTheme = ActionDispatcher<Null>('AppActions-enableDarkTheme');
  final disableDarkTheme =
      ActionDispatcher<Null>('AppActions-disableDarkTheme');
  final changeCurrency =
      ActionDispatcher<Currency>('AppActions-changeCurrency');
  final changeCurrencyDisplayingMode = ActionDispatcher<CurrencyDisplaying>(
      'AppActions-changeCurrencyDisplayingMode');
  final appInit = ActionDispatcher<Null>('AppActions-appInit');
  final appClose = ActionDispatcher<Null>('AppActions-appClose');
  final getCached = ActionDispatcher<Null>('AppActions-getCached');
  final findCached = ActionDispatcher<Find>('AppActions-findCached');
  final removeCached = ActionDispatcher<Find>('AppActions-removeCached');
  final clearCache = ActionDispatcher<DateTime>('AppActions-clearCache');
  final save =
      ActionDispatcher<SaveFindToPersistanceRequest>('AppActions-save');
  final saved = ActionDispatcher<Iterable<Find>>('AppActions-saved');
  final found = ActionDispatcher<Iterable<Train>>('AppActions-found');
  final openCached = ActionDispatcher<Find>('AppActions-openCached');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    changeDepartStationAction.setDispatcher(dispatcher);
    changeArriveStationAction.setDispatcher(dispatcher);
    changeDateAction.setDispatcher(dispatcher);
    searchAction.setDispatcher(dispatcher);
    serviceResponseAction.setDispatcher(dispatcher);
    refreshAction.setDispatcher(dispatcher);
    showTrainsPage.setDispatcher(dispatcher);
    showSettingsPage.setDispatcher(dispatcher);
    showInterfaceSettingsPage.setDispatcher(dispatcher);
    showBehaviorSettings.setDispatcher(dispatcher);
    showCached.setDispatcher(dispatcher);
    goBack.setDispatcher(dispatcher);
    enableDarkTheme.setDispatcher(dispatcher);
    disableDarkTheme.setDispatcher(dispatcher);
    changeCurrency.setDispatcher(dispatcher);
    changeCurrencyDisplayingMode.setDispatcher(dispatcher);
    appInit.setDispatcher(dispatcher);
    appClose.setDispatcher(dispatcher);
    getCached.setDispatcher(dispatcher);
    findCached.setDispatcher(dispatcher);
    removeCached.setDispatcher(dispatcher);
    clearCache.setDispatcher(dispatcher);
    save.setDispatcher(dispatcher);
    saved.setDispatcher(dispatcher);
    found.setDispatcher(dispatcher);
    openCached.setDispatcher(dispatcher);
  }
}

class AppActionsNames {
  static final changeDepartStationAction =
      ActionName<String>('AppActions-changeDepartStationAction');
  static final changeArriveStationAction =
      ActionName<String>('AppActions-changeArriveStationAction');
  static final changeDateAction =
      ActionName<DateTime>('AppActions-changeDateAction');
  static final searchAction = ActionName<Null>('AppActions-searchAction');
  static final serviceResponseAction =
      ActionName<ServiceResponse>('AppActions-serviceResponseAction');
  static final refreshAction = ActionName<Null>('AppActions-refreshAction');
  static final showTrainsPage = ActionName<Null>('AppActions-showTrainsPage');
  static final showSettingsPage =
      ActionName<Null>('AppActions-showSettingsPage');
  static final showInterfaceSettingsPage =
      ActionName<Null>('AppActions-showInterfaceSettingsPage');
  static final showBehaviorSettings =
      ActionName<Null>('AppActions-showBehaviorSettings');
  static final showCached = ActionName<Null>('AppActions-showCached');
  static final goBack = ActionName<Null>('AppActions-goBack');
  static final enableDarkTheme = ActionName<Null>('AppActions-enableDarkTheme');
  static final disableDarkTheme =
      ActionName<Null>('AppActions-disableDarkTheme');
  static final changeCurrency =
      ActionName<Currency>('AppActions-changeCurrency');
  static final changeCurrencyDisplayingMode =
      ActionName<CurrencyDisplaying>('AppActions-changeCurrencyDisplayingMode');
  static final appInit = ActionName<Null>('AppActions-appInit');
  static final appClose = ActionName<Null>('AppActions-appClose');
  static final getCached = ActionName<Null>('AppActions-getCached');
  static final findCached = ActionName<Find>('AppActions-findCached');
  static final removeCached = ActionName<Find>('AppActions-removeCached');
  static final clearCache = ActionName<DateTime>('AppActions-clearCache');
  static final save =
      ActionName<SaveFindToPersistanceRequest>('AppActions-save');
  static final saved = ActionName<Iterable<Find>>('AppActions-saved');
  static final found = ActionName<Iterable<Train>>('AppActions-found');
  static final openCached = ActionName<Find>('AppActions-openCached');
}
