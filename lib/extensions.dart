import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

extension DateTimePrinter on DateTime {
  String toStringOnlyDate() {
    return '$year-$month-$day';
  }

  String toStringOnlyTime() {
    return '${hour < 10 ? '0$hour' : hour}:${minute < 10 ? '0$minute' : minute}';
  }

  String toStringRus() {
    return '${day < 10 ? '0$day' : day}.${month < 10 ? '0$month' : month}.$year';
  }
}

extension DurationPrinter on Duration {
  String toStringOnlyHM(String h, String m) {
    return '${inHours > 0 ? '$inHours$h ' : ''}${'${inMinutes % 60}$m'}';
  }
}

extension StoreGetter on StatelessWidget {
  S getAppState<S>(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ReduxProvider>()
        .store
        // ignore: avoid_as
        .state as S;
  }

  A getAppActions<A>(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ReduxProvider>()
        .store
        // ignore: avoid_as
        .actions as A;
  }
}
