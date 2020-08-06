import 'package:Herald_flutter/redux/actions.dart';
import 'package:Herald_flutter/redux/app_state.dart';
import 'package:built_redux/built_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

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
        });
  }

  @override
  Widget build(BuildContext context) {
    final Store<AppState, AppStateBuilder, AppActions> store =
        context.dependOnInheritedWidgetOfExactType<ReduxProvider>().store;
    return Scaffold(
      appBar: AppBar(
        title: Text('Настройки'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.palette),
            title: Text('Настройки интерфейса'),
            onTap: store.actions.showInterfaceSettingsPage,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Настройки поведения'),
            onTap: () => {comingSoonOnTap(context)},
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('О приложении'),
            onTap: () => {comingSoonOnTap(context)},
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
