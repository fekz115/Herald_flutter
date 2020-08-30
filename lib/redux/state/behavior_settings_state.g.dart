// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'behavior_settings_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BehaviorSettingsState> _$behaviorSettingsStateSerializer =
    new _$BehaviorSettingsStateSerializer();

class _$BehaviorSettingsStateSerializer
    implements StructuredSerializer<BehaviorSettingsState> {
  @override
  final Iterable<Type> types = const [
    BehaviorSettingsState,
    _$BehaviorSettingsState
  ];
  @override
  final String wireName = 'BehaviorSettingsState';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BehaviorSettingsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'cachedState',
      serializers.serialize(object.cachedState,
          specifiedType: const FullType(CachedState)),
    ];

    return result;
  }

  @override
  BehaviorSettingsState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BehaviorSettingsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'cachedState':
          result.cachedState.replace(serializers.deserialize(value,
              specifiedType: const FullType(CachedState)) as CachedState);
          break;
      }
    }

    return result.build();
  }
}

class _$BehaviorSettingsState extends BehaviorSettingsState {
  @override
  final CachedState cachedState;

  factory _$BehaviorSettingsState(
          [void Function(BehaviorSettingsStateBuilder) updates]) =>
      (new BehaviorSettingsStateBuilder()..update(updates)).build();

  _$BehaviorSettingsState._({this.cachedState}) : super._() {
    if (cachedState == null) {
      throw new BuiltValueNullFieldError(
          'BehaviorSettingsState', 'cachedState');
    }
  }

  @override
  BehaviorSettingsState rebuild(
          void Function(BehaviorSettingsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BehaviorSettingsStateBuilder toBuilder() =>
      new BehaviorSettingsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BehaviorSettingsState && cachedState == other.cachedState;
  }

  @override
  int get hashCode {
    return $jf($jc(0, cachedState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BehaviorSettingsState')
          ..add('cachedState', cachedState))
        .toString();
  }
}

class BehaviorSettingsStateBuilder
    implements Builder<BehaviorSettingsState, BehaviorSettingsStateBuilder> {
  _$BehaviorSettingsState _$v;

  CachedStateBuilder _cachedState;
  CachedStateBuilder get cachedState =>
      _$this._cachedState ??= new CachedStateBuilder();
  set cachedState(CachedStateBuilder cachedState) =>
      _$this._cachedState = cachedState;

  BehaviorSettingsStateBuilder();

  BehaviorSettingsStateBuilder get _$this {
    if (_$v != null) {
      _cachedState = _$v.cachedState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BehaviorSettingsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BehaviorSettingsState;
  }

  @override
  void update(void Function(BehaviorSettingsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BehaviorSettingsState build() {
    _$BehaviorSettingsState _$result;
    try {
      _$result = _$v ??
          new _$BehaviorSettingsState._(cachedState: cachedState.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cachedState';
        cachedState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BehaviorSettingsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
