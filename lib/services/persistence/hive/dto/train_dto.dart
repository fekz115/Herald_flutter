import 'package:Herald/model/place.dart';
import 'package:Herald/model/train.dart';
import 'package:built_collection/built_collection.dart';
import 'package:hive/hive.dart';

import 'hive_type_ids.dart';
import 'place_dto.dart';
import 'train_type_dto.dart';

part 'train_dto.g.dart';

@HiveType(typeId: HiveTypeId.trainId)
class TrainDto {
  const TrainDto({
    this.trainId,
    this.type,
    this.departStation,
    this.arriveStation,
    this.departTime,
    this.places,
    this.reserved,
    this.comfort,
    this.speed,
    this.accessible,
    this.duration,
  });
  factory TrainDto.convertEntityToDto(Train entity) {
    return TrainDto(
      trainId: entity.trainId,
      type: convertTrainTypeToDto(entity.type),
      departStation: entity.departStation,
      arriveStation: entity.arriveStation,
      departTime: entity.departTime,
      places: entity.places.map((e) => PlaceDto.convertToDto(e)).toList(),
      reserved: entity.reserved,
      comfort: entity.comfort,
      speed: entity.speed,
      accessible: entity.accessible,
      duration: entity.duration.inMinutes,
    );
  }

  @HiveField(0)
  final String trainId;
  @HiveField(1)
  final TrainTypeDto type;
  @HiveField(2)
  final String departStation;
  @HiveField(3)
  final String arriveStation;
  @HiveField(4)
  final DateTime departTime;
  @HiveField(5)
  final List<PlaceDto> places;
  @HiveField(6)
  final bool reserved;
  @HiveField(7)
  final bool comfort;
  @HiveField(8)
  final bool speed;
  @HiveField(9)
  final bool accessible;
  @HiveField(10)
  final int duration;

  Train convertDtoToEntity() {
    return Train((b) => b
      ..trainId = trainId
      ..type = convertTrainTypeToEntity(type)
      ..departStation = departStation
      ..arriveStation = arriveStation
      ..departTime = departTime
      ..places =
          BuiltList<Place>.from(places.map((e) => e.convertToEntity()).toList())
              .toBuilder()
      ..reserved = reserved
      ..comfort = comfort
      ..speed = speed
      ..accessible = accessible
      ..duration = Duration(minutes: duration));
  }
}
