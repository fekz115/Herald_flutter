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
  final showTrainsPage = ActionDispatcher<Null>('AppActions-showTrainsPage');
  final showSettingsPage =
      ActionDispatcher<Null>('AppActions-showSettingsPage');
  final showInterfaceSettingsPage =
      ActionDispatcher<Null>('AppActions-showInterfaceSettingsPage');
  final goBack = ActionDispatcher<Null>('AppActions-goBack');
  final enableDarkTheme = ActionDispatcher<Null>('AppActions-enableDarkTheme');
  final disableDarkTheme =
      ActionDispatcher<Null>('AppActions-disableDarkTheme');
  final changeCurrency =
      ActionDispatcher<Currency>('AppActions-changeCurrency');
  final changeCurrencyDisplayingMode = ActionDispatcher<CurrencyDisplaying>(
      'AppActions-changeCurrencyDisplayingMode');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    changeDepartStationAction.setDispatcher(dispatcher);
    changeArriveStationAction.setDispatcher(dispatcher);
    changeDateAction.setDispatcher(dispatcher);
    searchAction.setDispatcher(dispatcher);
    serviceResponseAction.setDispatcher(dispatcher);
    showTrainsPage.setDispatcher(dispatcher);
    showSettingsPage.setDispatcher(dispatcher);
    showInterfaceSettingsPage.setDispatcher(dispatcher);
    goBack.setDispatcher(dispatcher);
    enableDarkTheme.setDispatcher(dispatcher);
    disableDarkTheme.setDispatcher(dispatcher);
    changeCurrency.setDispatcher(dispatcher);
    changeCurrencyDisplayingMode.setDispatcher(dispatcher);
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
  static final showTrainsPage = ActionName<Null>('AppActions-showTrainsPage');
  static final showSettingsPage =
      ActionName<Null>('AppActions-showSettingsPage');
  static final showInterfaceSettingsPage =
      ActionName<Null>('AppActions-showInterfaceSettingsPage');
  static final goBack = ActionName<Null>('AppActions-goBack');
  static final enableDarkTheme = ActionName<Null>('AppActions-enableDarkTheme');
  static final disableDarkTheme =
      ActionName<Null>('AppActions-disableDarkTheme');
  static final changeCurrency =
      ActionName<Currency>('AppActions-changeCurrency');
  static final changeCurrencyDisplayingMode =
      ActionName<CurrencyDisplaying>('AppActions-changeCurrencyDisplayingMode');
}
