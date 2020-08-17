import 'package:Herald_flutter/redux/actions.dart';
import 'package:Herald_flutter/redux/app_state.dart';
import 'package:built_redux/built_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

extension DateTimePrinter on DateTime {
  String toStringOnlyDate() {
    return '$year-$month-$day';
  }

  String toStringOnlyTime() {
    return '${hour < 10 ? '0' + hour.toString() : hour}:${minute < 10 ? '0' + minute.toString() : minute}';
  }

  String toStringRus() {
    return '${day < 10 ? '0' + day.toString() : day}.${month < 10 ? '0' + month.toString() : month}.$year';
  }
}

extension DurationPrinter on Duration {
  String toStringOnlyHM() {
    return (inHours > 0 ? '$inHoursч ' : '') + '${inMinutes % 60}мин';
  }
}

extension StoreGetter on StatelessWidget {
  AppState getAppState(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<ReduxProvider>().store.state as AppState);
  }
  
  AppActions getAppActions(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<ReduxProvider>().store.actions as AppActions);
  }
}