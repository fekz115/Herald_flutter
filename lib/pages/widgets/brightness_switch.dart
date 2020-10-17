import 'package:Herald_flutter/redux/actions.dart';
import 'package:Herald_flutter/redux/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

class BrightnessSwitch extends StoreConnector<AppState, AppActions, bool> {
  BrightnessSwitch({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, bool state, AppActions actions) {
    return Switch(
      value: state,
      onChanged: (value) {
        if (value) {
          actions.enableDarkTheme();
        } else {
          actions.disableDarkTheme();
        }
      },
    );
  }

  @override
  bool connect(AppState state) =>
      state.settingsState.interfaceSettingsState.useDarkTheme;
}
