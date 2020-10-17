import 'package:Herald_flutter/model/place.dart';
import 'package:Herald_flutter/services/persistence/hive/dto/hive_type_ids.dart';
import 'package:hive/hive.dart';

import 'place_type_dto.dart';
part 'place_dto.g.dart';

@HiveType(typeId: HiveTypeId.placeId)
class PlaceDto {
  const PlaceDto({
    this.type,
    this.amount,
    this.costBYN,
    this.costRUB,
    this.costUSD,
    this.costEUR,
  });
  factory PlaceDto.convertToDto(Place entity) {
    return PlaceDto(
      type: convertToPlaceTypeDto(entity.type),
      amount: entity.amount,
      costBYN: entity.costBYN,
      costRUB: entity.costRUB,
      costUSD: entity.costUSD,
      costEUR: entity.costEUR,
    );
  }

  @HiveField(0)
  final PlaceTypeDto type;
  @HiveField(1)
  final int amount;
  @HiveField(2)
  final double costBYN;
  @HiveField(3)
  final double costRUB;
  @HiveField(4)
  final double costUSD;
  @HiveField(5)
  final double costEUR;

  Place convertToEntity() {
    return Place((b) => b
      ..type = convertToPlaceTypeEntity(type)
      ..amount = amount
      ..costBYN = costBYN
      ..costRUB = costRUB
      ..costEUR = costEUR
      ..costUSD = costUSD);
  }
}
