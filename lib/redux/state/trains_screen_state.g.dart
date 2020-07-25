// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trains_screen_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TrainsLoadedScreenState> _$trainsLoadedScreenStateSerializer =
    new _$TrainsLoadedScreenStateSerializer();

class _$TrainsLoadedScreenStateSerializer
    implements StructuredSerializer<TrainsLoadedScreenState> {
  @override
  final Iterable<Type> types = const [
    TrainsLoadedScreenState,
    _$TrainsLoadedScreenState
  ];
  @override
  final String wireName = 'TrainsLoadedScreenState';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TrainsLoadedScreenState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'trains',
      serializers.serialize(object.trains,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Train)])),
    ];

    return result;
  }

  @override
  TrainsLoadedScreenState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrainsLoadedScreenStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'trains':
          result.trains.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Train)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$TrainsLoadedScreenState extends TrainsLoadedScreenState {
  @override
  final BuiltList<Train> trains;

  factory _$TrainsLoadedScreenState(
          [void Function(TrainsLoadedScreenStateBuilder) updates]) =>
      (new TrainsLoadedScreenStateBuilder()..update(updates)).build();

  _$TrainsLoadedScreenState._({this.trains}) : super._() {
    if (trains == null) {
      throw new BuiltValueNullFieldError('TrainsLoadedScreenState', 'trains');
    }
  }

  @override
  TrainsLoadedScreenState rebuild(
          void Function(TrainsLoadedScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrainsLoadedScreenStateBuilder toBuilder() =>
      new TrainsLoadedScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrainsLoadedScreenState && trains == other.trains;
  }

  @override
  int get hashCode {
    return $jf($jc(0, trains.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrainsLoadedScreenState')
          ..add('trains', trains))
        .toString();
  }
}

class TrainsLoadedScreenStateBuilder
    implements
        Builder<TrainsLoadedScreenState, TrainsLoadedScreenStateBuilder> {
  _$TrainsLoadedScreenState _$v;

  ListBuilder<Train> _trains;
  ListBuilder<Train> get trains => _$this._trains ??= new ListBuilder<Train>();
  set trains(ListBuilder<Train> trains) => _$this._trains = trains;

  TrainsLoadedScreenStateBuilder();

  TrainsLoadedScreenStateBuilder get _$this {
    if (_$v != null) {
      _trains = _$v.trains?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrainsLoadedScreenState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TrainsLoadedScreenState;
  }

  @override
  void update(void Function(TrainsLoadedScreenStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrainsLoadedScreenState build() {
    _$TrainsLoadedScreenState _$result;
    try {
      _$result = _$v ?? new _$TrainsLoadedScreenState._(trains: trains.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'trains';
        trains.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TrainsLoadedScreenState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TrainsParseExceptionScreenState
    extends TrainsParseExceptionScreenState {
  @override
  final ParseException exception;

  factory _$TrainsParseExceptionScreenState(
          [void Function(TrainsParseExceptionScreenStateBuilder) updates]) =>
      (new TrainsParseExceptionScreenStateBuilder()..update(updates)).build();

  _$TrainsParseExceptionScreenState._({this.exception}) : super._() {
    if (exception == null) {
      throw new BuiltValueNullFieldError(
          'TrainsParseExceptionScreenState', 'exception');
    }
  }

  @override
  TrainsParseExceptionScreenState rebuild(
          void Function(TrainsParseExceptionScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrainsParseExceptionScreenStateBuilder toBuilder() =>
      new TrainsParseExceptionScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrainsParseExceptionScreenState &&
        exception == other.exception;
  }

  @override
  int get hashCode {
    return $jf($jc(0, exception.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrainsParseExceptionScreenState')
          ..add('exception', exception))
        .toString();
  }
}

class TrainsParseExceptionScreenStateBuilder
    implements
        Builder<TrainsParseExceptionScreenState,
            TrainsParseExceptionScreenStateBuilder> {
  _$TrainsParseExceptionScreenState _$v;

  ParseException _exception;
  ParseException get exception => _$this._exception;
  set exception(ParseException exception) => _$this._exception = exception;

  TrainsParseExceptionScreenStateBuilder();

  TrainsParseExceptionScreenStateBuilder get _$this {
    if (_$v != null) {
      _exception = _$v.exception;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrainsParseExceptionScreenState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TrainsParseExceptionScreenState;
  }

  @override
  void update(void Function(TrainsParseExceptionScreenStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrainsParseExceptionScreenState build() {
    final _$result =
        _$v ?? new _$TrainsParseExceptionScreenState._(exception: exception);
    replace(_$result);
    return _$result;
  }
}

class _$TrainsExceptionScreenState extends TrainsExceptionScreenState {
  @override
  final Exception exception;

  factory _$TrainsExceptionScreenState(
          [void Function(TrainsExceptionScreenStateBuilder) updates]) =>
      (new TrainsExceptionScreenStateBuilder()..update(updates)).build();

  _$TrainsExceptionScreenState._({this.exception}) : super._() {
    if (exception == null) {
      throw new BuiltValueNullFieldError(
          'TrainsExceptionScreenState', 'exception');
    }
  }

  @override
  TrainsExceptionScreenState rebuild(
          void Function(TrainsExceptionScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrainsExceptionScreenStateBuilder toBuilder() =>
      new TrainsExceptionScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrainsExceptionScreenState && exception == other.exception;
  }

  @override
  int get hashCode {
    return $jf($jc(0, exception.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrainsExceptionScreenState')
          ..add('exception', exception))
        .toString();
  }
}

class TrainsExceptionScreenStateBuilder
    implements
        Builder<TrainsExceptionScreenState, TrainsExceptionScreenStateBuilder> {
  _$TrainsExceptionScreenState _$v;

  Exception _exception;
  Exception get exception => _$this._exception;
  set exception(Exception exception) => _$this._exception = exception;

  TrainsExceptionScreenStateBuilder();

  TrainsExceptionScreenStateBuilder get _$this {
    if (_$v != null) {
      _exception = _$v.exception;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrainsExceptionScreenState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TrainsExceptionScreenState;
  }

  @override
  void update(void Function(TrainsExceptionScreenStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrainsExceptionScreenState build() {
    final _$result =
        _$v ?? new _$TrainsExceptionScreenState._(exception: exception);
    replace(_$result);
    return _$result;
  }
}

class _$TrainsLoadingScreenState extends TrainsLoadingScreenState {
  factory _$TrainsLoadingScreenState(
          [void Function(TrainsLoadingScreenStateBuilder) updates]) =>
      (new TrainsLoadingScreenStateBuilder()..update(updates)).build();

  _$TrainsLoadingScreenState._() : super._();

  @override
  TrainsLoadingScreenState rebuild(
          void Function(TrainsLoadingScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrainsLoadingScreenStateBuilder toBuilder() =>
      new TrainsLoadingScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrainsLoadingScreenState;
  }

  @override
  int get hashCode {
    return 454567763;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('TrainsLoadingScreenState').toString();
  }
}

class TrainsLoadingScreenStateBuilder
    implements
        Builder<TrainsLoadingScreenState, TrainsLoadingScreenStateBuilder> {
  _$TrainsLoadingScreenState _$v;

  TrainsLoadingScreenStateBuilder();

  @override
  void replace(TrainsLoadingScreenState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TrainsLoadingScreenState;
  }

  @override
  void update(void Function(TrainsLoadingScreenStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrainsLoadingScreenState build() {
    final _$result = _$v ?? new _$TrainsLoadingScreenState._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// **************************************************************************
// SealedGenerator
// **************************************************************************

extension TrainsScreenStateExt on TrainsScreenState {
  void continued(
    Function(TrainsLoadedScreenState) continuationTrainsLoadedScreenState,
    Function(TrainsParseExceptionScreenState)
        continuationTrainsParseExceptionScreenState,
    Function(TrainsExceptionScreenState) continuationTrainsExceptionScreenState,
    Function(TrainsLoadingScreenState) continuationTrainsLoadingScreenState,
  ) {
    if (this is TrainsLoadedScreenState) {
      continuationTrainsLoadedScreenState(this);
    }
    if (this is TrainsParseExceptionScreenState) {
      continuationTrainsParseExceptionScreenState(this);
    }
    if (this is TrainsExceptionScreenState) {
      continuationTrainsExceptionScreenState(this);
    }
    if (this is TrainsLoadingScreenState) {
      continuationTrainsLoadingScreenState(this);
    }
  }

  R join<R>(
    R Function(TrainsLoadedScreenState) joinTrainsLoadedScreenState,
    R Function(TrainsParseExceptionScreenState)
        joinTrainsParseExceptionScreenState,
    R Function(TrainsExceptionScreenState) joinTrainsExceptionScreenState,
    R Function(TrainsLoadingScreenState) joinTrainsLoadingScreenState,
  ) {
    R r;
    if (this is TrainsLoadedScreenState) {
      r = joinTrainsLoadedScreenState(this);
    }
    if (this is TrainsParseExceptionScreenState) {
      r = joinTrainsParseExceptionScreenState(this);
    }
    if (this is TrainsExceptionScreenState) {
      r = joinTrainsExceptionScreenState(this);
    }
    if (this is TrainsLoadingScreenState) {
      r = joinTrainsLoadingScreenState(this);
    }

    return r;
  }
}
