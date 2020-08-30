// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SettingsState> _$settingsStateSerializer =
    new _$SettingsStateSerializer();

class _$SettingsStateSerializer implements StructuredSerializer<SettingsState> {
  @override
  final Iterable<Type> types = const [SettingsState, _$SettingsState];
  @override
  final String wireName = 'SettingsState';

  @override
  Iterable<Object> serialize(Serializers serializers, SettingsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'interfaceSettingsState',
      serializers.serialize(object.interfaceSettingsState,
          specifiedType: const FullType(InterfaceSettingsState)),
      'behaviorSettingsState',
      serializers.serialize(object.behaviorSettingsState,
          specifiedType: const FullType(BehaviorSettingsState)),
    ];

    return result;
  }

  @override
  SettingsState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SettingsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'interfaceSettingsState':
          result.interfaceSettingsState.replace(serializers.deserialize(value,
                  specifiedType: const FullType(InterfaceSettingsState))
              as InterfaceSettingsState);
          break;
        case 'behaviorSettingsState':
          result.behaviorSettingsState.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BehaviorSettingsState))
              as BehaviorSettingsState);
          break;
      }
    }

    return result.build();
  }
}

class _$SettingsState extends SettingsState {
  @override
  final InterfaceSettingsState interfaceSettingsState;
  @override
  final BehaviorSettingsState behaviorSettingsState;

  factory _$SettingsState([void Function(SettingsStateBuilder) updates]) =>
      (new SettingsStateBuilder()..update(updates)).build();

  _$SettingsState._({this.interfaceSettingsState, this.behaviorSettingsState})
      : super._() {
    if (interfaceSettingsState == null) {
      throw new BuiltValueNullFieldError(
          'SettingsState', 'interfaceSettingsState');
    }
    if (behaviorSettingsState == null) {
      throw new BuiltValueNullFieldError(
          'SettingsState', 'behaviorSettingsState');
    }
  }

  @override
  SettingsState rebuild(void Function(SettingsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingsStateBuilder toBuilder() => new SettingsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingsState &&
        interfaceSettingsState == other.interfaceSettingsState &&
        behaviorSettingsState == other.behaviorSettingsState;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, interfaceSettingsState.hashCode),
        behaviorSettingsState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SettingsState')
          ..add('interfaceSettingsState', interfaceSettingsState)
          ..add('behaviorSettingsState', behaviorSettingsState))
        .toString();
  }
}

class SettingsStateBuilder
    implements Builder<SettingsState, SettingsStateBuilder> {
  _$SettingsState _$v;

  InterfaceSettingsStateBuilder _interfaceSettingsState;
  InterfaceSettingsStateBuilder get interfaceSettingsState =>
      _$this._interfaceSettingsState ??= new InterfaceSettingsStateBuilder();
  set interfaceSettingsState(
          InterfaceSettingsStateBuilder interfaceSettingsState) =>
      _$this._interfaceSettingsState = interfaceSettingsState;

  BehaviorSettingsStateBuilder _behaviorSettingsState;
  BehaviorSettingsStateBuilder get behaviorSettingsState =>
      _$this._behaviorSettingsState ??= new BehaviorSettingsStateBuilder();
  set behaviorSettingsState(
          BehaviorSettingsStateBuilder behaviorSettingsState) =>
      _$this._behaviorSettingsState = behaviorSettingsState;

  SettingsStateBuilder();

  SettingsStateBuilder get _$this {
    if (_$v != null) {
      _interfaceSettingsState = _$v.interfaceSettingsState?.toBuilder();
      _behaviorSettingsState = _$v.behaviorSettingsState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SettingsState;
  }

  @override
  void update(void Function(SettingsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SettingsState build() {
    _$SettingsState _$result;
    try {
      _$result = _$v ??
          new _$SettingsState._(
              interfaceSettingsState: interfaceSettingsState.build(),
              behaviorSettingsState: behaviorSettingsState.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'interfaceSettingsState';
        interfaceSettingsState.build();
        _$failedField = 'behaviorSettingsState';
        behaviorSettingsState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SettingsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
