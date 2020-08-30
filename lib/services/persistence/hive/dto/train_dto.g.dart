// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'train_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TrainDtoAdapter extends TypeAdapter<TrainDto> {
  @override
  final int typeId = 3;

  @override
  TrainDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TrainDto(
      fields[0] as String,
      fields[1] as TrainTypeDto,
      fields[2] as String,
      fields[3] as String,
      fields[4] as DateTime,
      (fields[5] as List)?.cast<PlaceDto>(),
      fields[6] as bool,
      fields[7] as bool,
      fields[8] as bool,
      fields[9] as bool,
      fields[10] as int,
    );
  }

  @override
  void write(BinaryWriter writer, TrainDto obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.trainId)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.departStation)
      ..writeByte(3)
      ..write(obj.arriveStation)
      ..writeByte(4)
      ..write(obj.departTime)
      ..writeByte(5)
      ..write(obj.places)
      ..writeByte(6)
      ..write(obj.reserved)
      ..writeByte(7)
      ..write(obj.comfort)
      ..writeByte(8)
      ..write(obj.speed)
      ..writeByte(9)
      ..write(obj.accessible)
      ..writeByte(10)
      ..write(obj.duration);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrainDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
