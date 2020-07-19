// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PlaceType _$sittingSeat = const PlaceType._('sittingSeat');
const PlaceType _$reservedSeat = const PlaceType._('reservedSeat');
const PlaceType _$compartment = const PlaceType._('compartment');
const PlaceType _$sv = const PlaceType._('sv');
const PlaceType _$none = const PlaceType._('none');

PlaceType _$valueOf(String name) {
  switch (name) {
    case 'sittingSeat':
      return _$sittingSeat;
    case 'reservedSeat':
      return _$reservedSeat;
    case 'compartment':
      return _$compartment;
    case 'sv':
      return _$sv;
    case 'none':
      return _$none;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PlaceType> _$values = new BuiltSet<PlaceType>(const <PlaceType>[
  _$sittingSeat,
  _$reservedSeat,
  _$compartment,
  _$sv,
  _$none,
]);

Serializer<PlaceType> _$placeTypeSerializer = new _$PlaceTypeSerializer();

class _$PlaceTypeSerializer implements PrimitiveSerializer<PlaceType> {
  @override
  final Iterable<Type> types = const <Type>[PlaceType];
  @override
  final String wireName = 'PlaceType';

  @override
  Object serialize(Serializers serializers, PlaceType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  PlaceType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PlaceType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
