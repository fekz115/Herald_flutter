import 'package:Herald_flutter/i18n.dart';
import 'package:Herald_flutter/extensions/theme_extensions.dart';
import 'package:Herald_flutter/model/place.dart';
import 'package:Herald_flutter/redux/actions.dart';
import 'package:Herald_flutter/redux/app_state.dart';
import 'package:Herald_flutter/redux/state/interface_settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

abstract class WidgetResolver {
  static const _currencySymbolMap = {
    Currency.USD: r'$',
    Currency.EUR: '€',
    Currency.RUB: '₽',
    Currency.BYN: 'Br'
  };

  static const _currencyISOMap = {
    Currency.USD: 'USD',
    Currency.EUR: 'EUR',
    Currency.RUB: 'RUB',
    Currency.BYN: 'BYN'
  };

  static Widget buildCost(BuildContext context, Place place) {
    return StoreConnection<AppState, AppActions, InterfaceSettingsState>(
      connect: (state) => state.settingsState.interfaceSettingsState,
      builder: (context, state, actions) {
        double cost;
        switch (state.selectedCurrency) {
          case Currency.RUB:
            cost = place.costRUB;
            break;
          case Currency.BYN:
            cost = place.costBYN;
            break;
          case Currency.EUR:
            cost = place.costEUR;
            break;
          case Currency.USD:
            cost = place.costUSD;
            break;
        }
        String currency;
        switch (state.currencyDisplaying) {
          case CurrencyDisplaying.ICON:
            currency = _currencySymbolMap[state.selectedCurrency];
            break;
          case CurrencyDisplaying.ISO:
            currency = _currencyISOMap[state.selectedCurrency];
            break;
          case CurrencyDisplaying.LOCAL_NAME:
            currency = HeraldLocalizations.of(context)
                .getCurrencyCost(state.selectedCurrency);
            break;
        }
        return Text(
          '$cost $currency',
          style: Theme.of(context).tableItemTextStyle(),
          textAlign: TextAlign.end,
        );
      },
    );
  }
}
