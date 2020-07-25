// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_text_input_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StationTextInputState> _$stationTextInputStateSerializer =
    new _$StationTextInputStateSerializer();

class _$StationTextInputStateSerializer
    implements StructuredSerializer<StationTextInputState> {
  @override
  final Iterable<Type> types = const [
    StationTextInputState,
    _$StationTextInputState
  ];
  @override
  final String wireName = 'StationTextInputState';

  @override
  Iterable<Object> serialize(
      Serializers serializers, StationTextInputState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  StationTextInputState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StationTextInputStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StationTextInputState extends StationTextInputState {
  @override
  final String value;

  factory _$StationTextInputState(
          [void Function(StationTextInputStateBuilder) updates]) =>
      (new StationTextInputStateBuilder()..update(updates)).build();

  _$StationTextInputState._({this.value}) : super._() {
    if (value == null) {
      throw new BuiltValueNullFieldError('StationTextInputState', 'value');
    }
  }

  @override
  StationTextInputState rebuild(
          void Function(StationTextInputStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StationTextInputStateBuilder toBuilder() =>
      new StationTextInputStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StationTextInputState && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StationTextInputState')
          ..add('value', value))
        .toString();
  }
}

class StationTextInputStateBuilder
    implements Builder<StationTextInputState, StationTextInputStateBuilder> {
  _$StationTextInputState _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  StationTextInputStateBuilder();

  StationTextInputStateBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StationTextInputState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StationTextInputState;
  }

  @override
  void update(void Function(StationTextInputStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StationTextInputState build() {
    final _$result = _$v ?? new _$StationTextInputState._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
