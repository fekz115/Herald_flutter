import 'package:Herald_flutter/extensions.dart';
import 'package:Herald_flutter/navigation.gr.dart';
import 'package:Herald_flutter/pages/widgets/station_text_field.dart';
import 'package:Herald_flutter/redux/actions.dart';
import 'package:Herald_flutter/redux/app_state.dart';
import 'package:Herald_flutter/redux/state/initial_screen_state.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

class HomePage
    extends StoreConnector<AppState, AppActions, InitialScreenState> {
  @override
  Widget build(
      BuildContext context, InitialScreenState state, AppActions actions) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Herald'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StationTextField(
              (state) => state.initialScreenState.departStationTextInputState,
              'Станция отправления',
              actions.changeDepartStationAction,
            ),
            SizedBox(height: 30),
            StationTextField(
              (state) => state.initialScreenState.arriveStationTextInputState,
              'Станция назначения',
              actions.changeArriveStationAction,
            ),
            SizedBox(height: 30),
            RaisedButton(
              child: Text(state.date.toStringOnlyDate()),
              onPressed: () => {
                showDatePicker(
                        context: context,
                        initialDate: state.date,
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(Duration(days: 7)))
                    .then((value) =>
                        {if (value != null) actions.changeDateAction(value)})
              },
            ),
            SizedBox(height: 10),
            RaisedButton(
              child: Text('Поиск'),
              onPressed: () {
                actions.searchAction();
                ExtendedNavigator.ofRouter<Router>().pushNamed(Routes.trainsPage);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  InitialScreenState connect(AppState state) => state.initialScreenState;
}
