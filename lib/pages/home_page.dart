import 'package:Herald/i18n.dart';
import 'package:Herald/navigation/pages.dart';
import 'package:Herald/pages/widgets/date_button.dart';
import 'package:Herald/pages/widgets/station_text_field.dart';
import 'package:Herald/redux/actions.dart';
import 'package:flutter/material.dart';
import 'package:Herald/extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(HeraldLocalizations.of(context).title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => getAppActions<AppActions>(context).navigate(Pages.settingsPage),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StationTextField(
              connector: (state) => state.initialScreenState.departStationTextInputState,
              label: HeraldLocalizations.of(context).departStation,
              onTextChanged: (value) => getAppActions(context).changeDepartStationAction(value),
            ),
            const SizedBox(height: 30),
            StationTextField(
              connector: (state) => state.initialScreenState.arriveStationTextInputState,
              label: HeraldLocalizations.of(context).arriveStation,
              onTextChanged: (value) => getAppActions(context).changeArriveStationAction(value),
            ),
            const SizedBox(height: 30),
            DateButton(),
            const SizedBox(height: 10),
            RaisedButton(
              onPressed: () => getAppActions(context).searchAction(),
              child: Text(HeraldLocalizations.of(context).search),
            ),
          ],
        ),
      ),
    );
  }
}
