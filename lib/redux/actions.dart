import 'package:Herald_flutter/services/service_response.dart';
import 'package:built_redux/built_redux.dart';

part 'actions.g.dart';

abstract class AppActions extends ReduxActions {
  ActionDispatcher<String> changeDepartStationAction;
  ActionDispatcher<String> changeArriveStationAction;
  ActionDispatcher<DateTime> changeDateAction;
  ActionDispatcher<Null> searchAction;
  ActionDispatcher<ServiceResponse> serviceResponseAction;

  AppActions._();
  factory AppActions() => new _$AppActions();
}