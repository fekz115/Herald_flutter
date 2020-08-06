import 'package:Herald_flutter/pages/widgets/date_button.dart';
import 'package:Herald_flutter/pages/widgets/station_text_field.dart';
import 'package:Herald_flutter/redux/actions.dart';
import 'package:Herald_flutter/redux/app_state.dart';
import 'package:built_redux/built_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Store<AppState, AppStateBuilder, AppActions> store =
        context.dependOnInheritedWidgetOfExactType<ReduxProvider>().store;
    return Scaffold(
      appBar: AppBar(
        title: Text('Herald'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: store.actions.showSettingsPage,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StationTextField(
              (state) => state.initialScreenState.departStationTextInputState,
              'Станция отправления',
              store.actions.changeDepartStationAction,
            ),
            SizedBox(height: 30),
            StationTextField(
              (state) => state.initialScreenState.arriveStationTextInputState,
              'Станция назначения',
              store.actions.changeArriveStationAction,
            ),
            SizedBox(height: 30),
            DateButton(),
            SizedBox(height: 10),
            RaisedButton(
              child: Text('Поиск'),
              onPressed: store.actions.searchAction,
            ),
          ],
        ),
      ),
    );
  }
}
