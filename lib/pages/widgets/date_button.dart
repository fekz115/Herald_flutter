import 'package:Herald_flutter/redux/actions.dart';
import 'package:Herald_flutter/redux/app_state.dart';
import 'package:Herald_flutter/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

class DateButton extends StoreConnector<AppState, AppActions, DateTime> {
  DateButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, DateTime state, AppActions actions) {
    return RaisedButton(
      onPressed: () => {
        showDatePicker(
                context: context,
                initialDate: state,
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(const Duration(days: 7)))
            .then((value) =>
                {if (value != null) actions.changeDateAction(value)})
      },
      child: Text(state.toStringOnlyDate()),
    );
  }

  @override
  DateTime connect(AppState state) => state.initialScreenState.date;
}
