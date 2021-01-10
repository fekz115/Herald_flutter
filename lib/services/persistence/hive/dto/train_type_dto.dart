import 'package:Herald/model/train_type.dart';
import 'package:Herald/services/persistence/hive/dto/hive_type_ids.dart';
import 'package:hive/hive.dart';

part 'train_type_dto.g.dart';

@HiveType(typeId: HiveTypeId.trainTypeId)
enum TrainTypeDto {
  @HiveField(0)
  regionalEconomy,
  @HiveField(1)
  regionalBusiness,
  @HiveField(2)
  interregionalEconomy,
  @HiveField(3)
  interregionalBusiness,
  @HiveField(4)
  international,
  @HiveField(5)
  bus,
  @HiveField(6)
  cityLines,
  @HiveField(7)
  commercial,
  @HiveField(8)
  airport,
  @HiveField(9)
  none,
}

TrainType convertTrainTypeToEntity(TrainTypeDto dto) {
  switch(dto){
    case TrainTypeDto.regionalEconomy:
      return TrainType.regionalEconomy;
    case TrainTypeDto.regionalBusiness:
      return TrainType.regionalBusiness;
    case TrainTypeDto.interregionalEconomy:
      return TrainType.interregionalEconomy;
    case TrainTypeDto.interregionalBusiness:
      return TrainType.interregionalBusiness;
    case TrainTypeDto.international:
      return TrainType.international;
    case TrainTypeDto.bus:
      return TrainType.bus;
    case TrainTypeDto.cityLines:
      return TrainType.cityLines;
    case TrainTypeDto.commercial:
      return TrainType.commercial;
    case TrainTypeDto.airport:
      return TrainType.airport;
    case TrainTypeDto.none:
      return TrainType.none;
  }
  return TrainType.none;
}

TrainTypeDto convertTrainTypeToDto(TrainType entity) {
  switch(entity){
    case TrainType.regionalEconomy:
      return TrainTypeDto.regionalEconomy;
    case TrainType.regionalBusiness:
      return TrainTypeDto.regionalBusiness;
    case TrainType.interregionalEconomy:
      return TrainTypeDto.interregionalEconomy;
    case TrainType.interregionalBusiness:
      return TrainTypeDto.interregionalBusiness;
    case TrainType.international:
      return TrainTypeDto.international;
    case TrainType.bus:
      return TrainTypeDto.bus;
    case TrainType.cityLines:
      return TrainTypeDto.cityLines;
    case TrainType.commercial:
      return TrainTypeDto.commercial;
    case TrainType.airport:
      return TrainTypeDto.airport;
    case TrainType.none:
      return TrainTypeDto.none;
  }
  return TrainTypeDto.none;
}
