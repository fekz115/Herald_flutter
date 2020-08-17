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
          title: Text('Скоро появится'),
          content: Text('Данный функционал еще не реализован'),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Закрыть"),
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
        title: Text('Настройки'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.palette),
            title: Text('Настройки интерфейса'),
            onTap: getAppActions(context).showInterfaceSettingsPage,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Настройки поведения'),
            onTap: () => {comingSoonOnTap(context)},
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('О приложении'),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationIcon: Icon(Icons.train),
                applicationName: 'Herald',
                applicationVersion: '0.1.0-dev1',
                children: <Widget>[
                  Text(
                    'Herald - приложение для получения информации о расписании поездов.',
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
                    text:
                        "Исходный код приложения доступен по ссылке https://github.com/fekz115/Herald_flutter",
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
                    text:
                        "Информация о расписании взята с сайта https://www.rw.by/",
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Основано на фреймворке Flutter.',
                    textAlign: TextAlign.center,
                  ),
                ],
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('Обратная связь'),
            onTap: () => {comingSoonOnTap(context)},
          ),
        ],
      ),
    );
  }
}
