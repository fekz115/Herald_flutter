import 'package:Herald/i18n.dart';
import 'package:Herald/pages/widgets/brightness_switch.dart';
import 'package:Herald/redux/actions.dart';
import 'package:Herald/redux/app_state.dart';
import 'package:Herald/redux/state/interface_settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

class InterfaceSettingsPage
    extends StoreConnector<AppState, AppActions, InterfaceSettingsState> {
  InterfaceSettingsPage({Key key}) : super(key: key);

  @override
  Widget build(
      BuildContext context, InterfaceSettingsState state, AppActions actions) {
    return Scaffold(
      appBar: AppBar(
        title: Text(HeraldLocalizations.of(context).interfaceSettings),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              HeraldLocalizations.of(context).darkTheme,
            ),
            trailing: BrightnessSwitch(),
          ),
          ListTile(
            title: Text(
              HeraldLocalizations.of(context).currency,
            ),
            trailing: DropdownButton<Currency>(
              onChanged: actions.changeCurrency,
              items: Currency.values
                  .map(
                    (currency) => DropdownMenuItem(
                      value: currency,
                      child: Text(
                        HeraldLocalizations.of(context)
                            .getCurrencyName(currency),
                      ),
                    ),
                  )
                  .toList(),
              value: state.selectedCurrency,
            ),
          ),
          ListTile(
            title: Text(
              HeraldLocalizations.of(context).currencyDisplayMode,
            ),
            trailing: DropdownButton<CurrencyDisplaying>(
              onChanged: actions.changeCurrencyDisplayingMode,
              items: CurrencyDisplaying.values
                  .map(
                    (currency) => DropdownMenuItem(
                      value: currency,
                      child: Text(
                        HeraldLocalizations.of(context)
                            .getCurrencyDisplayingModeName(currency),
                      ),
                    ),
                  )
                  .toList(),
              value: state.currencyDisplaying,
            ),
          ),
        ],
      ),
    );
  }

  @override
  InterfaceSettingsState connect(AppState state) =>
      state.settingsState.interfaceSettingsState;
}
