import 'package:Herald/i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:Herald/extensions.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  Future<void> comingSoonOnTap(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(HeraldLocalizations.of(context).comingSoon),
          content: Text(HeraldLocalizations.of(context).comingSoonDescription),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(HeraldLocalizations.of(context).close),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(HeraldLocalizations.of(context).settings),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.palette),
            title: Text(HeraldLocalizations.of(context).interfaceSettings),
            onTap: () => getAppActions(context).showInterfaceSettingsPage(),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(HeraldLocalizations.of(context).behaviorSettings),
            onTap: () => getAppActions(context).showBehaviorSettings(),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: Text(HeraldLocalizations.of(context).aboutApp),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationIcon: const Icon(Icons.train),
                applicationName: HeraldLocalizations.of(context).title,
                applicationVersion: '0.1.0-dev2',
                children: <Widget>[
                  Text(
                    HeraldLocalizations.of(context).appDescription,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Linkify(
                    onOpen: (link) async {
                      if (await canLaunch(link.url)) {
                        await launch(link.url);
                      }
                    },
                    text: HeraldLocalizations.of(context).sourceCodeDescription,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Linkify(
                    onOpen: (link) async {
                      if (await canLaunch(link.url)) {
                        await launch(link.url);
                      }
                    },
                    text: HeraldLocalizations.of(context).informationSource,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    HeraldLocalizations.of(context).flutterPowered,
                    textAlign: TextAlign.center,
                  ),
                ],
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.mail),
            title: Text(HeraldLocalizations.of(context).feedback),
            onTap: () => comingSoonOnTap(context),
          ),
        ],
      ),
    );
  }
}
