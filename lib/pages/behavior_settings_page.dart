import 'package:Herald/i18n.dart';
import 'package:Herald/navigation/pages.dart';
import 'package:Herald/redux/actions.dart';
import 'package:flutter/material.dart';
import 'package:Herald/extensions.dart';

class BehaviorSettingsPage extends StatelessWidget {
  const BehaviorSettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(HeraldLocalizations.of(context).behaviorSettings),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.save),
            title: const Text('Сохраненные'),
            onTap: () => getAppActions<AppActions>(context).navigate(Pages.cachedPage),
          ),
        ],
      ),
    );
  }
}
