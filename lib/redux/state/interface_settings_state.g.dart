// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interface_settings_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InterfaceSettingsState> _$interfaceSettingsStateSerializer =
    new _$InterfaceSettingsStateSerializer();

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
      }
    }

    return result.build();
  }
}

class _$InterfaceSettingsState extends InterfaceSettingsState {
  @override
  final bool useDarkTheme;

  factory _$InterfaceSettingsState(
          [void Function(InterfaceSettingsStateBuilder) updates]) =>
      (new InterfaceSettingsStateBuilder()..update(updates)).build();

  _$InterfaceSettingsState._({this.useDarkTheme}) : super._() {
    if (useDarkTheme == null) {
      throw new BuiltValueNullFieldError(
          'InterfaceSettingsState', 'useDarkTheme');
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
        useDarkTheme == other.useDarkTheme;
  }

  @override
  int get hashCode {
    return $jf($jc(0, useDarkTheme.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InterfaceSettingsState')
          ..add('useDarkTheme', useDarkTheme))
        .toString();
  }
}

class InterfaceSettingsStateBuilder
    implements Builder<InterfaceSettingsState, InterfaceSettingsStateBuilder> {
  _$InterfaceSettingsState _$v;

  bool _useDarkTheme;
  bool get useDarkTheme => _$this._useDarkTheme;
  set useDarkTheme(bool useDarkTheme) => _$this._useDarkTheme = useDarkTheme;

  InterfaceSettingsStateBuilder();

  InterfaceSettingsStateBuilder get _$this {
    if (_$v != null) {
      _useDarkTheme = _$v.useDarkTheme;
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
    final _$result =
        _$v ?? new _$InterfaceSettingsState._(useDarkTheme: useDarkTheme);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
