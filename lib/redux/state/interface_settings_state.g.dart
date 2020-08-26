// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interface_settings_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Currency _$EUR = const Currency._('EUR');
const Currency _$RUB = const Currency._('RUB');
const Currency _$BYN = const Currency._('BYN');
const Currency _$USD = const Currency._('USD');

Currency _$currencyValueOf(String name) {
  switch (name) {
    case 'EUR':
      return _$EUR;
    case 'RUB':
      return _$RUB;
    case 'BYN':
      return _$BYN;
    case 'USD':
      return _$USD;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Currency> _$currencyValues =
    new BuiltSet<Currency>(const <Currency>[
  _$EUR,
  _$RUB,
  _$BYN,
  _$USD,
]);

const CurrencyDisplaying _$LOCAL_NAME =
    const CurrencyDisplaying._('LOCAL_NAME');
const CurrencyDisplaying _$ICON = const CurrencyDisplaying._('ICON');
const CurrencyDisplaying _$ISO = const CurrencyDisplaying._('ISO');

CurrencyDisplaying _$currencyDisplayingValueOf(String name) {
  switch (name) {
    case 'LOCAL_NAME':
      return _$LOCAL_NAME;
    case 'ICON':
      return _$ICON;
    case 'ISO':
      return _$ISO;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CurrencyDisplaying> _$currencyDisplayingValues =
    new BuiltSet<CurrencyDisplaying>(const <CurrencyDisplaying>[
  _$LOCAL_NAME,
  _$ICON,
  _$ISO,
]);

Serializer<InterfaceSettingsState> _$interfaceSettingsStateSerializer =
    new _$InterfaceSettingsStateSerializer();
Serializer<Currency> _$currencySerializer = new _$CurrencySerializer();
Serializer<CurrencyDisplaying> _$currencyDisplayingSerializer =
    new _$CurrencyDisplayingSerializer();

class _$InterfaceSettingsStateSerializer
    implements StructuredSerializer<InterfaceSettingsState> {
  @override
  final Iterable<Type> types = const [
    InterfaceSettingsState,
    _$InterfaceSettingsState
  ];
  @override
  final String wireName = 'InterfaceSettingsState';

  @override
  Iterable<Object> serialize(
      Serializers serializers, InterfaceSettingsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'useDarkTheme',
      serializers.serialize(object.useDarkTheme,
          specifiedType: const FullType(bool)),
      'selectedCurrency',
      serializers.serialize(object.selectedCurrency,
          specifiedType: const FullType(Currency)),
      'currencyDisplaying',
      serializers.serialize(object.currencyDisplaying,
          specifiedType: const FullType(CurrencyDisplaying)),
    ];

    return result;
  }

  @override
  InterfaceSettingsState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InterfaceSettingsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'useDarkTheme':
          result.useDarkTheme = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'selectedCurrency':
          result.selectedCurrency = serializers.deserialize(value,
              specifiedType: const FullType(Currency)) as Currency;
          break;
        case 'currencyDisplaying':
          result.currencyDisplaying = serializers.deserialize(value,
                  specifiedType: const FullType(CurrencyDisplaying))
              as CurrencyDisplaying;
          break;
      }
    }

    return result.build();
  }
}

class _$CurrencySerializer implements PrimitiveSerializer<Currency> {
  @override
  final Iterable<Type> types = const <Type>[Currency];
  @override
  final String wireName = 'Currency';

  @override
  Object serialize(Serializers serializers, Currency object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  Currency deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Currency.valueOf(serialized as String);
}

class _$CurrencyDisplayingSerializer
    implements PrimitiveSerializer<CurrencyDisplaying> {
  @override
  final Iterable<Type> types = const <Type>[CurrencyDisplaying];
  @override
  final String wireName = 'CurrencyDisplaying';

  @override
  Object serialize(Serializers serializers, CurrencyDisplaying object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  CurrencyDisplaying deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CurrencyDisplaying.valueOf(serialized as String);
}

class _$InterfaceSettingsState extends InterfaceSettingsState {
  @override
  final bool useDarkTheme;
  @override
  final Currency selectedCurrency;
  @override
  final CurrencyDisplaying currencyDisplaying;

  factory _$InterfaceSettingsState(
          [void Function(InterfaceSettingsStateBuilder) updates]) =>
      (new InterfaceSettingsStateBuilder()..update(updates)).build();

  _$InterfaceSettingsState._(
      {this.useDarkTheme, this.selectedCurrency, this.currencyDisplaying})
      : super._() {
    if (useDarkTheme == null) {
      throw new BuiltValueNullFieldError(
          'InterfaceSettingsState', 'useDarkTheme');
    }
    if (selectedCurrency == null) {
      throw new BuiltValueNullFieldError(
          'InterfaceSettingsState', 'selectedCurrency');
    }
    if (currencyDisplaying == null) {
      throw new BuiltValueNullFieldError(
          'InterfaceSettingsState', 'currencyDisplaying');
    }
  }

  @override
  InterfaceSettingsState rebuild(
          void Function(InterfaceSettingsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InterfaceSettingsStateBuilder toBuilder() =>
      new InterfaceSettingsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InterfaceSettingsState &&
        useDarkTheme == other.useDarkTheme &&
        selectedCurrency == other.selectedCurrency &&
        currencyDisplaying == other.currencyDisplaying;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, useDarkTheme.hashCode), selectedCurrency.hashCode),
        currencyDisplaying.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InterfaceSettingsState')
          ..add('useDarkTheme', useDarkTheme)
          ..add('selectedCurrency', selectedCurrency)
          ..add('currencyDisplaying', currencyDisplaying))
        .toString();
  }
}

class InterfaceSettingsStateBuilder
    implements Builder<InterfaceSettingsState, InterfaceSettingsStateBuilder> {
  _$InterfaceSettingsState _$v;

  bool _useDarkTheme;
  bool get useDarkTheme => _$this._useDarkTheme;
  set useDarkTheme(bool useDarkTheme) => _$this._useDarkTheme = useDarkTheme;

  Currency _selectedCurrency;
  Currency get selectedCurrency => _$this._selectedCurrency;
  set selectedCurrency(Currency selectedCurrency) =>
      _$this._selectedCurrency = selectedCurrency;

  CurrencyDisplaying _currencyDisplaying;
  CurrencyDisplaying get currencyDisplaying => _$this._currencyDisplaying;
  set currencyDisplaying(CurrencyDisplaying currencyDisplaying) =>
      _$this._currencyDisplaying = currencyDisplaying;

  InterfaceSettingsStateBuilder();

  InterfaceSettingsStateBuilder get _$this {
    if (_$v != null) {
      _useDarkTheme = _$v.useDarkTheme;
      _selectedCurrency = _$v.selectedCurrency;
      _currencyDisplaying = _$v.currencyDisplaying;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InterfaceSettingsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InterfaceSettingsState;
  }

  @override
  void update(void Function(InterfaceSettingsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InterfaceSettingsState build() {
    final _$result = _$v ??
        new _$InterfaceSettingsState._(
            useDarkTheme: useDarkTheme,
            selectedCurrency: selectedCurrency,
            currencyDisplaying: currencyDisplaying);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
