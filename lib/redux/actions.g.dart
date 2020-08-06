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
  final goBack = ActionDispatcher<Null>('AppActions-goBack');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    changeDepartStationAction.setDispatcher(dispatcher);
    changeArriveStationAction.setDispatcher(dispatcher);
    changeDateAction.setDispatcher(dispatcher);
    searchAction.setDispatcher(dispatcher);
    serviceResponseAction.setDispatcher(dispatcher);
    showTrainsPage.setDispatcher(dispatcher);
    goBack.setDispatcher(dispatcher);
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
  static final goBack = ActionName<Null>('AppActions-goBack');
}
