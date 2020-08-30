// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_type_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlaceTypeDtoAdapter extends TypeAdapter<PlaceTypeDto> {
  @override
  final int typeId = 0;

  @override
  PlaceTypeDto read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return PlaceTypeDto.sittingSeat;
      case 1:
        return PlaceTypeDto.reservedSeat;
      case 2:
        return PlaceTypeDto.compartment;
      case 3:
        return PlaceTypeDto.sv;
      case 4:
        return PlaceTypeDto.none;
      default:
        return null;
    }
  }

  @override
  void write(BinaryWriter writer, PlaceTypeDto obj) {
    switch (obj) {
      case PlaceTypeDto.sittingSeat:
        writer.writeByte(0);
        break;
      case PlaceTypeDto.reservedSeat:
        writer.writeByte(1);
        break;
      case PlaceTypeDto.compartment:
        writer.writeByte(2);
        break;
      case PlaceTypeDto.sv:
        writer.writeByte(3);
        break;
      case PlaceTypeDto.none:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceTypeDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
