// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Place> _$placeSerializer = new _$PlaceSerializer();

class _$PlaceSerializer implements StructuredSerializer<Place> {
  @override
  final Iterable<Type> types = const [Place, _$Place];
  @override
  final String wireName = 'Place';

  @override
  Iterable<Object> serialize(Serializers serializers, Place object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(PlaceType)),
      'amount',
      serializers.serialize(object.amount, specifiedType: const FullType(int)),
      'costBYN',
      serializers.serialize(object.costBYN,
          specifiedType: const FullType(double)),
      'costRUB',
      serializers.serialize(object.costRUB,
          specifiedType: const FullType(double)),
      'costUSD',
      serializers.serialize(object.costUSD,
          specifiedType: const FullType(double)),
      'costEUR',
      serializers.serialize(object.costEUR,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Place deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlaceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(PlaceType)) as PlaceType;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'costBYN':
          result.costBYN = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'costRUB':
          result.costRUB = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'costUSD':
          result.costUSD = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'costEUR':
          result.costEUR = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Place extends Place {
  @override
  final PlaceType type;
  @override
  final int amount;
  @override
  final double costBYN;
  @override
  final double costRUB;
  @override
  final double costUSD;
  @override
  final double costEUR;

  factory _$Place([void Function(PlaceBuilder) updates]) =>
      (new PlaceBuilder()..update(updates)).build();

  _$Place._(
      {this.type,
      this.amount,
      this.costBYN,
      this.costRUB,
      this.costUSD,
      this.costEUR})
      : super._() {
    if (type == null) {
      throw new BuiltValueNullFieldError('Place', 'type');
    }
    if (amount == null) {
      throw new BuiltValueNullFieldError('Place', 'amount');
    }
    if (costBYN == null) {
      throw new BuiltValueNullFieldError('Place', 'costBYN');
    }
    if (costRUB == null) {
      throw new BuiltValueNullFieldError('Place', 'costRUB');
    }
    if (costUSD == null) {
      throw new BuiltValueNullFieldError('Place', 'costUSD');
    }
    if (costEUR == null) {
      throw new BuiltValueNullFieldError('Place', 'costEUR');
    }
  }

  @override
  Place rebuild(void Function(PlaceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceBuilder toBuilder() => new PlaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Place &&
        type == other.type &&
        amount == other.amount &&
        costBYN == other.costBYN &&
        costRUB == other.costRUB &&
        costUSD == other.costUSD &&
        costEUR == other.costEUR;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, type.hashCode), amount.hashCode),
                    costBYN.hashCode),
                costRUB.hashCode),
            costUSD.hashCode),
        costEUR.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Place')
          ..add('type', type)
          ..add('amount', amount)
          ..add('costBYN', costBYN)
          ..add('costRUB', costRUB)
          ..add('costUSD', costUSD)
          ..add('costEUR', costEUR))
        .toString();
  }
}

class PlaceBuilder implements Builder<Place, PlaceBuilder> {
  _$Place _$v;

  PlaceType _type;
  PlaceType get type => _$this._type;
  set type(PlaceType type) => _$this._type = type;

  int _amount;
  int get amount => _$this._amount;
  set amount(int amount) => _$this._amount = amount;

  double _costBYN;
  double get costBYN => _$this._costBYN;
  set costBYN(double costBYN) => _$this._costBYN = costBYN;

  double _costRUB;
  double get costRUB => _$this._costRUB;
  set costRUB(double costRUB) => _$this._costRUB = costRUB;

  double _costUSD;
  double get costUSD => _$this._costUSD;
  set costUSD(double costUSD) => _$this._costUSD = costUSD;

  double _costEUR;
  double get costEUR => _$this._costEUR;
  set costEUR(double costEUR) => _$this._costEUR = costEUR;

  PlaceBuilder();

  PlaceBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _amount = _$v.amount;
      _costBYN = _$v.costBYN;
      _costRUB = _$v.costRUB;
      _costUSD = _$v.costUSD;
      _costEUR = _$v.costEUR;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Place other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Place;
  }

  @override
  void update(void Function(PlaceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Place build() {
    final _$result = _$v ??
        new _$Place._(
            type: type,
            amount: amount,
            costBYN: costBYN,
            costRUB: costRUB,
            costUSD: costUSD,
            costEUR: costEUR);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
