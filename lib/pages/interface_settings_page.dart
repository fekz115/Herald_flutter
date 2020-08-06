import 'package:Herald_flutter/pages/widgets/brightness_switch.dart';
import 'package:Herald_flutter/redux/actions.dart';
import 'package:Herald_flutter/redux/app_state.dart';
import 'package:Herald_flutter/redux/state/interface_settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

class InterfaceSettingsPage
    extends StoreConnector<AppState, AppActions, InterfaceSettingsState> {
  @override
  Widget build(
      BuildContext context, InterfaceSettingsState state, AppActions actions) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Настройки интерфейса'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Темная тема'),
            trailing: BrightnessSwitch(),
          ),
        ],
      ),
    );
  }

  @override
  InterfaceSettingsState connect(AppState state) =>
      state.settingsState.interfaceSettingsState;
}
