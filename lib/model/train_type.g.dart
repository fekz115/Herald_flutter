// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'train_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TrainType _$regionalEconomy = const TrainType._('regionalEconomy');
const TrainType _$regionalBusiness = const TrainType._('regionalBusiness');
const TrainType _$interregionalEconomy =
    const TrainType._('interregionalEconomy');
const TrainType _$interregionalBusiness =
    const TrainType._('interregionalBusiness');
const TrainType _$international = const TrainType._('international');
const TrainType _$bus = const TrainType._('bus');
const TrainType _$cityLines = const TrainType._('cityLines');
const TrainType _$commercial = const TrainType._('commercial');
const TrainType _$airport = const TrainType._('airport');
const TrainType _$none = const TrainType._('none');

TrainType _$valueOf(String name) {
  switch (name) {
    case 'regionalEconomy':
      return _$regionalEconomy;
    case 'regionalBusiness':
      return _$regionalBusiness;
    case 'interregionalEconomy':
      return _$interregionalEconomy;
    case 'interregionalBusiness':
      return _$interregionalBusiness;
    case 'international':
      return _$international;
    case 'bus':
      return _$bus;
    case 'cityLines':
      return _$cityLines;
    case 'commercial':
      return _$commercial;
    case 'airport':
      return _$airport;
    case 'none':
      return _$none;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TrainType> _$values = new BuiltSet<TrainType>(const <TrainType>[
  _$regionalEconomy,
  _$regionalBusiness,
  _$interregionalEconomy,
  _$interregionalBusiness,
  _$international,
  _$bus,
  _$cityLines,
  _$commercial,
  _$airport,
  _$none,
]);

Serializer<TrainType> _$trainTypeSerializer = new _$TrainTypeSerializer();

class _$TrainTypeSerializer implements PrimitiveSerializer<TrainType> {
  @override
  final Iterable<Type> types = const <Type>[TrainType];
  @override
  final String wireName = 'TrainType';

  @override
  Object serialize(Serializers serializers, TrainType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  TrainType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TrainType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
