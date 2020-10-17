import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_type.g.dart';

class PlaceType extends EnumClass {
  const PlaceType._(String name) : super(name);

  static const PlaceType sittingSeat = _$sittingSeat;
  static const PlaceType reservedSeat = _$reservedSeat;
  static const PlaceType compartment = _$compartment;
  static const PlaceType sv = _$sv;
  static const PlaceType none = _$none;

  static BuiltSet<PlaceType> get values => _$values;
  static PlaceType valueOf(String name) => _$valueOf(name);
  static Serializer<PlaceType> get serializer => _$placeTypeSerializer;
}
