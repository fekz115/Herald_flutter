import 'dart:convert';

import 'package:Herald/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'interface_settings_state.g.dart';

abstract class InterfaceSettingsState
    implements Built<InterfaceSettingsState, InterfaceSettingsStateBuilder> {
  factory InterfaceSettingsState(
      [InterfaceSettingsStateBuilder Function(InterfaceSettingsStateBuilder b)
          updates]) = _$InterfaceSettingsState;
  InterfaceSettingsState._();

  bool get useDarkTheme;
  Currency get selectedCurrency;
  CurrencyDisplaying get currencyDisplaying;

  String toJson() {
    return json.encode(
        serializers.serializeWith(InterfaceSettingsState.serializer, this));
  }

  static InterfaceSettingsState fromJson(String jsonString) {
    return serializers.deserializeWith(
        InterfaceSettingsState.serializer, json.decode(jsonString));
  }

  static Serializer<InterfaceSettingsState> get serializer =>
      _$interfaceSettingsStateSerializer;
}

class Currency extends EnumClass {
  const Currency._(String name) : super(name);

  static Serializer<Currency> get serializer => _$currencySerializer;

  static const Currency EUR = _$EUR;
  static const Currency RUB = _$RUB;
  static const Currency BYN = _$BYN;
  static const Currency USD = _$USD;

  static BuiltSet<Currency> get values => _$currencyValues;
  static Currency valueOf(String name) => _$currencyValueOf(name);
}

class CurrencyDisplaying extends EnumClass {
  const CurrencyDisplaying._(String name) : super(name);

  static Serializer<CurrencyDisplaying> get serializer =>
      _$currencyDisplayingSerializer;

  static const CurrencyDisplaying LOCAL_NAME = _$LOCAL_NAME;
  static const CurrencyDisplaying ICON = _$ICON;
  static const CurrencyDisplaying ISO = _$ISO;

  static BuiltSet<CurrencyDisplaying> get values => _$currencyDisplayingValues;
  static CurrencyDisplaying valueOf(String name) =>
      _$currencyDisplayingValueOf(name);
}
