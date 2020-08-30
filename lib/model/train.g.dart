// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'train.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Train> _$trainSerializer = new _$TrainSerializer();

class _$TrainSerializer implements StructuredSerializer<Train> {
  @override
  final Iterable<Type> types = const [Train, _$Train];
  @override
  final String wireName = 'Train';

  @override
  Iterable<Object> serialize(Serializers serializers, Train object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'trainId',
      serializers.serialize(object.trainId,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(TrainType)),
      'departStation',
      serializers.serialize(object.departStation,
          specifiedType: const FullType(String)),
      'arriveStation',
      serializers.serialize(object.arriveStation,
          specifiedType: const FullType(String)),
      'departTime',
      serializers.serialize(object.departTime,
          specifiedType: const FullType(DateTime)),
      'places',
      serializers.serialize(object.places,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Place)])),
      'reserved',
      serializers.serialize(object.reserved,
          specifiedType: const FullType(bool)),
      'comfort',
      serializers.serialize(object.comfort,
          specifiedType: const FullType(bool)),
      'speed',
      serializers.serialize(object.speed, specifiedType: const FullType(bool)),
      'accessible',
      serializers.serialize(object.accessible,
          specifiedType: const FullType(bool)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(Duration)),
    ];

    return result;
  }

  @override
  Train deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrainBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'trainId':
          result.trainId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(TrainType)) as TrainType;
          break;
        case 'departStation':
          result.departStation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'arriveStation':
          result.arriveStation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'departTime':
          result.departTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'places':
          result.places.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Place)]))
              as BuiltList<Object>);
          break;
        case 'reserved':
          result.reserved = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'comfort':
          result.comfort = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'speed':
          result.speed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'accessible':
          result.accessible = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(Duration)) as Duration;
          break;
      }
    }

    return result.build();
  }
}

class _$Train extends Train {
  @override
  final String trainId;
  @override
  final TrainType type;
  @override
  final String departStation;
  @override
  final String arriveStation;
  @override
  final DateTime departTime;
  @override
  final BuiltList<Place> places;
  @override
  final bool reserved;
  @override
  final bool comfort;
  @override
  final bool speed;
  @override
  final bool accessible;
  @override
  final Duration duration;

  factory _$Train([void Function(TrainBuilder) updates]) =>
      (new TrainBuilder()..update(updates)).build();

  _$Train._(
      {this.trainId,
      this.type,
      this.departStation,
      this.arriveStation,
      this.departTime,
      this.places,
      this.reserved,
      this.comfort,
      this.speed,
      this.accessible,
      this.duration})
      : super._() {
    if (trainId == null) {
      throw new BuiltValueNullFieldError('Train', 'trainId');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('Train', 'type');
    }
    if (departStation == null) {
      throw new BuiltValueNullFieldError('Train', 'departStation');
    }
    if (arriveStation == null) {
      throw new BuiltValueNullFieldError('Train', 'arriveStation');
    }
    if (departTime == null) {
      throw new BuiltValueNullFieldError('Train', 'departTime');
    }
    if (places == null) {
      throw new BuiltValueNullFieldError('Train', 'places');
    }
    if (reserved == null) {
      throw new BuiltValueNullFieldError('Train', 'reserved');
    }
    if (comfort == null) {
      throw new BuiltValueNullFieldError('Train', 'comfort');
    }
    if (speed == null) {
      throw new BuiltValueNullFieldError('Train', 'speed');
    }
    if (accessible == null) {
      throw new BuiltValueNullFieldError('Train', 'accessible');
    }
    if (duration == null) {
      throw new BuiltValueNullFieldError('Train', 'duration');
    }
  }

  @override
  Train rebuild(void Function(TrainBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrainBuilder toBuilder() => new TrainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Train &&
        trainId == other.trainId &&
        type == other.type &&
        departStation == other.departStation &&
        arriveStation == other.arriveStation &&
        departTime == other.departTime &&
        places == other.places &&
        reserved == other.reserved &&
        comfort == other.comfort &&
        speed == other.speed &&
        accessible == other.accessible &&
        duration == other.duration;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, trainId.hashCode),
                                            type.hashCode),
                                        departStation.hashCode),
                                    arriveStation.hashCode),
                                departTime.hashCode),
                            places.hashCode),
                        reserved.hashCode),
                    comfort.hashCode),
                speed.hashCode),
            accessible.hashCode),
        duration.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Train')
          ..add('trainId', trainId)
          ..add('type', type)
          ..add('departStation', departStation)
          ..add('arriveStation', arriveStation)
          ..add('departTime', departTime)
          ..add('places', places)
          ..add('reserved', reserved)
          ..add('comfort', comfort)
          ..add('speed', speed)
          ..add('accessible', accessible)
          ..add('duration', duration))
        .toString();
  }
}

class TrainBuilder implements Builder<Train, TrainBuilder> {
  _$Train _$v;

  String _trainId;
  String get trainId => _$this._trainId;
  set trainId(String trainId) => _$this._trainId = trainId;

  TrainType _type;
  TrainType get type => _$this._type;
  set type(TrainType type) => _$this._type = type;

  String _departStation;
  String get departStation => _$this._departStation;
  set departStation(String departStation) =>
      _$this._departStation = departStation;

  String _arriveStation;
  String get arriveStation => _$this._arriveStation;
  set arriveStation(String arriveStation) =>
      _$this._arriveStation = arriveStation;

  DateTime _departTime;
  DateTime get departTime => _$this._departTime;
  set departTime(DateTime departTime) => _$this._departTime = departTime;

  ListBuilder<Place> _places;
  ListBuilder<Place> get places => _$this._places ??= new ListBuilder<Place>();
  set places(ListBuilder<Place> places) => _$this._places = places;

  bool _reserved;
  bool get reserved => _$this._reserved;
  set reserved(bool reserved) => _$this._reserved = reserved;

  bool _comfort;
  bool get comfort => _$this._comfort;
  set comfort(bool comfort) => _$this._comfort = comfort;

  bool _speed;
  bool get speed => _$this._speed;
  set speed(bool speed) => _$this._speed = speed;

  bool _accessible;
  bool get accessible => _$this._accessible;
  set accessible(bool accessible) => _$this._accessible = accessible;

  Duration _duration;
  Duration get duration => _$this._duration;
  set duration(Duration duration) => _$this._duration = duration;

  TrainBuilder();

  TrainBuilder get _$this {
    if (_$v != null) {
      _trainId = _$v.trainId;
      _type = _$v.type;
      _departStation = _$v.departStation;
      _arriveStation = _$v.arriveStation;
      _departTime = _$v.departTime;
      _places = _$v.places?.toBuilder();
      _reserved = _$v.reserved;
      _comfort = _$v.comfort;
      _speed = _$v.speed;
      _accessible = _$v.accessible;
      _duration = _$v.duration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Train other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Train;
  }

  @override
  void update(void Function(TrainBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Train build() {
    _$Train _$result;
    try {
      _$result = _$v ??
          new _$Train._(
              trainId: trainId,
              type: type,
              departStation: departStation,
              arriveStation: arriveStation,
              departTime: departTime,
              places: places.build(),
              reserved: reserved,
              comfort: comfort,
              speed: speed,
              accessible: accessible,
              duration: duration);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'places';
        places.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Train', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
