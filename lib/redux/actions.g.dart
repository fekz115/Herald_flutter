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
  final swapStations = ActionDispatcher<Void>('AppActions-swapStations');
  final searchAction = ActionDispatcher<Void>('AppActions-searchAction');
  final serviceResponseAction =
      ActionDispatcher<ServiceResponse>('AppActions-serviceResponseAction');
  final refreshAction = ActionDispatcher<Void>('AppActions-refreshAction');
  final navigate = ActionDispatcher<Pages>('AppActions-navigate');
  final goBack = ActionDispatcher<Void>('AppActions-goBack');
  final enableDarkTheme = ActionDispatcher<Void>('AppActions-enableDarkTheme');
  final disableDarkTheme =
      ActionDispatcher<Void>('AppActions-disableDarkTheme');
  final changeCurrency =
      ActionDispatcher<Currency>('AppActions-changeCurrency');
  final changeCurrencyDisplayingMode = ActionDispatcher<CurrencyDisplaying>(
      'AppActions-changeCurrencyDisplayingMode');
  final appInit = ActionDispatcher<Void>('AppActions-appInit');
  final appClose = ActionDispatcher<Void>('AppActions-appClose');
  final getCached = ActionDispatcher<Void>('AppActions-getCached');
  final findCached = ActionDispatcher<Find>('AppActions-findCached');
  final removeCached = ActionDispatcher<Find>('AppActions-removeCached');
  final clearCache = ActionDispatcher<DateTime>('AppActions-clearCache');
  final save =
      ActionDispatcher<SaveFindToPersistanceRequest>('AppActions-save');
  final saved = ActionDispatcher<Iterable<Find>>('AppActions-saved');
  final found = ActionDispatcher<Iterable<Train>>('AppActions-found');
  final openCached = ActionDispatcher<Find>('AppActions-openCached');
  final openFeedback = ActionDispatcher<Void>('AppActions-openFeedback');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    changeDepartStationAction.setDispatcher(dispatcher);
    changeArriveStationAction.setDispatcher(dispatcher);
    changeDateAction.setDispatcher(dispatcher);
    swapStations.setDispatcher(dispatcher);
    searchAction.setDispatcher(dispatcher);
    serviceResponseAction.setDispatcher(dispatcher);
    refreshAction.setDispatcher(dispatcher);
    navigate.setDispatcher(dispatcher);
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
    openFeedback.setDispatcher(dispatcher);
  }
}

class AppActionsNames {
  static final changeDepartStationAction =
      ActionName<String>('AppActions-changeDepartStationAction');
  static final changeArriveStationAction =
      ActionName<String>('AppActions-changeArriveStationAction');
  static final changeDateAction =
      ActionName<DateTime>('AppActions-changeDateAction');
  static final swapStations = ActionName<Void>('AppActions-swapStations');
  static final searchAction = ActionName<Void>('AppActions-searchAction');
  static final serviceResponseAction =
      ActionName<ServiceResponse>('AppActions-serviceResponseAction');
  static final refreshAction = ActionName<Void>('AppActions-refreshAction');
  static final navigate = ActionName<Pages>('AppActions-navigate');
  static final goBack = ActionName<Void>('AppActions-goBack');
  static final enableDarkTheme = ActionName<Void>('AppActions-enableDarkTheme');
  static final disableDarkTheme =
      ActionName<Void>('AppActions-disableDarkTheme');
  static final changeCurrency =
      ActionName<Currency>('AppActions-changeCurrency');
  static final changeCurrencyDisplayingMode =
      ActionName<CurrencyDisplaying>('AppActions-changeCurrencyDisplayingMode');
  static final appInit = ActionName<Void>('AppActions-appInit');
  static final appClose = ActionName<Void>('AppActions-appClose');
  static final getCached = ActionName<Void>('AppActions-getCached');
  static final findCached = ActionName<Find>('AppActions-findCached');
  static final removeCached = ActionName<Find>('AppActions-removeCached');
  static final clearCache = ActionName<DateTime>('AppActions-clearCache');
  static final save =
      ActionName<SaveFindToPersistanceRequest>('AppActions-save');
  static final saved = ActionName<Iterable<Find>>('AppActions-saved');
  static final found = ActionName<Iterable<Train>>('AppActions-found');
  static final openCached = ActionName<Find>('AppActions-openCached');
  static final openFeedback = ActionName<Void>('AppActions-openFeedback');
}
