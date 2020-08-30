import 'package:Herald_flutter/i18n.dart';
import 'package:flutter/material.dart';
import 'package:Herald_flutter/extensions.dart';

class BehaviorSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(HeraldLocalizations.of(context).behaviorSettings),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.save),
            title: Text('Сохраненные'),
            onTap: getAppActions(context).showCached,
          ),
        ],
      ),
    );
  }
}
