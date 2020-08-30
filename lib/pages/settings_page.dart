import 'package:Herald_flutter/i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:Herald_flutter/extensions.dart';

class SettingsPage extends StatelessWidget {
  void comingSoonOnTap(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(HeraldLocalizations.of(context).comingSoon),
          content: Text(HeraldLocalizations.of(context).comingSoonDescription),
          actions: <Widget>[
            new FlatButton(
              child: new Text(HeraldLocalizations.of(context).close),
              onPressed: () {
                Navigator.of(context).pop();
              },
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
            leading: Icon(Icons.palette),
            title: Text(HeraldLocalizations.of(context).interfaceSettings),
            onTap: getAppActions(context).showInterfaceSettingsPage,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(HeraldLocalizations.of(context).behaviorSettings),
            onTap: getAppActions(context).showBehaviorSettings,
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text(HeraldLocalizations.of(context).aboutApp),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationIcon: Icon(Icons.train),
                applicationName: HeraldLocalizations.of(context).title,
                applicationVersion: '0.1.0-dev2',
                children: <Widget>[
                  Text(
                    HeraldLocalizations.of(context).appDescription,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Linkify(
                    onOpen: (link) async {
                      if (await canLaunch(link.url)) {
                        await launch(link.url);
                      }
                    },
                    text: HeraldLocalizations.of(context).sourceCodeDescription,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Linkify(
                    onOpen: (link) async {
                      if (await canLaunch(link.url)) {
                        await launch(link.url);
                      }
                    },
                    text: HeraldLocalizations.of(context).informationSource,
                  ),
                  SizedBox(
                    height: 10.0,
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
            leading: Icon(Icons.mail),
            title: Text(HeraldLocalizations.of(context).feedback),
            onTap: () => {comingSoonOnTap(context)},
          ),
        ],
      ),
    );
  }
}
