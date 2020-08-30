// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'train_type_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TrainTypeDtoAdapter extends TypeAdapter<TrainTypeDto> {
  @override
  final int typeId = 2;

  @override
  TrainTypeDto read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TrainTypeDto.regionalEconomy;
      case 1:
        return TrainTypeDto.regionalBusiness;
      case 2:
        return TrainTypeDto.interregionalEconomy;
      case 3:
        return TrainTypeDto.interregionalBusiness;
      case 4:
        return TrainTypeDto.international;
      case 5:
        return TrainTypeDto.bus;
      case 6:
        return TrainTypeDto.cityLines;
      case 7:
        return TrainTypeDto.commercial;
      case 8:
        return TrainTypeDto.airport;
      case 9:
        return TrainTypeDto.none;
      default:
        return null;
    }
  }

  @override
  void write(BinaryWriter writer, TrainTypeDto obj) {
    switch (obj) {
      case TrainTypeDto.regionalEconomy:
        writer.writeByte(0);
        break;
      case TrainTypeDto.regionalBusiness:
        writer.writeByte(1);
        break;
      case TrainTypeDto.interregionalEconomy:
        writer.writeByte(2);
        break;
      case TrainTypeDto.interregionalBusiness:
        writer.writeByte(3);
        break;
      case TrainTypeDto.international:
        writer.writeByte(4);
        break;
      case TrainTypeDto.bus:
        writer.writeByte(5);
        break;
      case TrainTypeDto.cityLines:
        writer.writeByte(6);
        break;
      case TrainTypeDto.commercial:
        writer.writeByte(7);
        break;
      case TrainTypeDto.airport:
        writer.writeByte(8);
        break;
      case TrainTypeDto.none:
        writer.writeByte(9);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrainTypeDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
