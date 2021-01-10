import 'package:Herald/model/place_type.dart';
import 'package:Herald/services/persistence/hive/dto/hive_type_ids.dart';
import 'package:hive/hive.dart';

part 'place_type_dto.g.dart';

@HiveType(typeId: HiveTypeId.placeTypeId)
enum PlaceTypeDto {
  @HiveField(0)
  sittingSeat,
  @HiveField(1)
  reservedSeat,
  @HiveField(2)
  compartment,
  @HiveField(3)
  sv,
  @HiveField(4)
  none
}

PlaceType convertToPlaceTypeEntity(PlaceTypeDto dto) {
  switch(dto) {
    case PlaceTypeDto.compartment:
      return PlaceType.compartment;
    case PlaceTypeDto.sittingSeat:
      return PlaceType.sittingSeat;
    case PlaceTypeDto.reservedSeat:
      return PlaceType.reservedSeat;
    case PlaceTypeDto.sv:
      return PlaceType.sv;
    case PlaceTypeDto.none:
      return PlaceType.none;
  }
  return PlaceType.none;
}

PlaceTypeDto convertToPlaceTypeDto(PlaceType entity) {
  switch(entity) {
    case PlaceType.compartment:
      return PlaceTypeDto.compartment;
    case PlaceType.sittingSeat:
      return PlaceTypeDto.sittingSeat;
    case PlaceType.reservedSeat:
      return PlaceTypeDto.reservedSeat;
    case PlaceType.sv:
      return PlaceTypeDto.sv;
    case PlaceType.none:
      return PlaceTypeDto.none;
  }
  return PlaceTypeDto.none;
}