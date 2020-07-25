// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initial_screen_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InitialScreenState> _$initialScreenStateSerializer =
    new _$InitialScreenStateSerializer();

class _$InitialScreenStateSerializer
    implements StructuredSerializer<InitialScreenState> {
  @override
  final Iterable<Type> types = const [InitialScreenState, _$InitialScreenState];
  @override
  final String wireName = 'InitialScreenState';

  @override
  Iterable<Object> serialize(Serializers serializers, InitialScreenState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'arriveStationTextInputState',
      serializers.serialize(object.arriveStationTextInputState,
          specifiedType: const FullType(StationTextInputState)),
      'departStationTextInputState',
      serializers.serialize(object.departStationTextInputState,
          specifiedType: const FullType(StationTextInputState)),
      'date',
      serializers.serialize(object.date,
          specifiedType: const FullType(DateTime)),
    ];

    return result;
  }

  @override
  InitialScreenState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InitialScreenStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'arriveStationTextInputState':
          result.arriveStationTextInputState.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(StationTextInputState))
              as StationTextInputState);
          break;
        case 'departStationTextInputState':
          result.departStationTextInputState.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(StationTextInputState))
              as StationTextInputState);
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$InitialScreenState extends InitialScreenState {
  @override
  final StationTextInputState arriveStationTextInputState;
  @override
  final StationTextInputState departStationTextInputState;
  @override
  final DateTime date;

  factory _$InitialScreenState(
          [void Function(InitialScreenStateBuilder) updates]) =>
      (new InitialScreenStateBuilder()..update(updates)).build();

  _$InitialScreenState._(
      {this.arriveStationTextInputState,
      this.departStationTextInputState,
      this.date})
      : super._() {
    if (arriveStationTextInputState == null) {
      throw new BuiltValueNullFieldError(
          'InitialScreenState', 'arriveStationTextInputState');
    }
    if (departStationTextInputState == null) {
      throw new BuiltValueNullFieldError(
          'InitialScreenState', 'departStationTextInputState');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('InitialScreenState', 'date');
    }
  }

  @override
  InitialScreenState rebuild(
          void Function(InitialScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InitialScreenStateBuilder toBuilder() =>
      new InitialScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InitialScreenState &&
        arriveStationTextInputState == other.arriveStationTextInputState &&
        departStationTextInputState == other.departStationTextInputState &&
        date == other.date;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, arriveStationTextInputState.hashCode),
            departStationTextInputState.hashCode),
        date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InitialScreenState')
          ..add('arriveStationTextInputState', arriveStationTextInputState)
          ..add('departStationTextInputState', departStationTextInputState)
          ..add('date', date))
        .toString();
  }
}

class InitialScreenStateBuilder
    implements Builder<InitialScreenState, InitialScreenStateBuilder> {
  _$InitialScreenState _$v;

  StationTextInputStateBuilder _arriveStationTextInputState;
  StationTextInputStateBuilder get arriveStationTextInputState =>
      _$this._arriveStationTextInputState ??=
          new StationTextInputStateBuilder();
  set arriveStationTextInputState(
          StationTextInputStateBuilder arriveStationTextInputState) =>
      _$this._arriveStationTextInputState = arriveStationTextInputState;

  StationTextInputStateBuilder _departStationTextInputState;
  StationTextInputStateBuilder get departStationTextInputState =>
      _$this._departStationTextInputState ??=
          new StationTextInputStateBuilder();
  set departStationTextInputState(
          StationTextInputStateBuilder departStationTextInputState) =>
      _$this._departStationTextInputState = departStationTextInputState;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  InitialScreenStateBuilder();

  InitialScreenStateBuilder get _$this {
    if (_$v != null) {
      _arriveStationTextInputState =
          _$v.arriveStationTextInputState?.toBuilder();
      _departStationTextInputState =
          _$v.departStationTextInputState?.toBuilder();
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InitialScreenState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InitialScreenState;
  }

  @override
  void update(void Function(InitialScreenStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InitialScreenState build() {
    _$InitialScreenState _$result;
    try {
      _$result = _$v ??
          new _$InitialScreenState._(
              arriveStationTextInputState: arriveStationTextInputState.build(),
              departStationTextInputState: departStationTextInputState.build(),
              date: date);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'arriveStationTextInputState';
        arriveStationTextInputState.build();
        _$failedField = 'departStationTextInputState';
        departStationTextInputState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InitialScreenState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
