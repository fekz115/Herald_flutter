// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlaceDtoAdapter extends TypeAdapter<PlaceDto> {
  @override
  final int typeId = 1;

  @override
  PlaceDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlaceDto(
      type: fields[0] as PlaceTypeDto,
      amount: fields[1] as int,
      costBYN: fields[2] as double,
      costRUB: fields[3] as double,
      costUSD: fields[4] as double,
      costEUR: fields[5] as double,
    );
  }

  @override
  void write(BinaryWriter writer, PlaceDto obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.amount)
      ..writeByte(2)
      ..write(obj.costBYN)
      ..writeByte(3)
      ..write(obj.costRUB)
      ..writeByte(4)
      ..write(obj.costUSD)
      ..writeByte(5)
      ..write(obj.costEUR);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
