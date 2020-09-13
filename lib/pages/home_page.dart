import 'package:Herald_flutter/i18n.dart';
import 'package:Herald_flutter/pages/widgets/date_button.dart';
import 'package:Herald_flutter/pages/widgets/station_text_field.dart';
import 'package:flutter/material.dart';
import 'package:Herald_flutter/extensions.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(HeraldLocalizations.of(context).title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: getAppActions(context).showSettingsPage,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StationTextField(
              connector: (state) => state.initialScreenState.departStationTextInputState,
              label: HeraldLocalizations.of(context).departStation,
              onTextChanged: getAppActions(context).changeDepartStationAction,
            ),
            SizedBox(height: 30),
            StationTextField(
              connector: (state) => state.initialScreenState.arriveStationTextInputState,
              label: HeraldLocalizations.of(context).arriveStation,
              onTextChanged: getAppActions(context).changeArriveStationAction,
            ),
            SizedBox(height: 30),
            DateButton(),
            SizedBox(height: 10),
            RaisedButton(
              child: Text(HeraldLocalizations.of(context).search),
              onPressed: getAppActions(context).searchAction,
            ),
          ],
        ),
      ),
    );
  }
}
