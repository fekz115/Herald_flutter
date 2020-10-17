import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/services/persistence/hive/dto/train_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'hive_type_ids.dart';

part 'db_entry.g.dart';

@HiveType(typeId: HiveTypeId.entryId)
@immutable
class Entry {
  const Entry({
    @required this.departStation,
    @required this.arriveStation,
    @required this.dateTime,
    @required this.trains,
  });
  factory Entry.fromEntities(Find find, Iterable<Train> trains) {
    final departStation = find.departStation;
    final arriveStation = find.arriveStation;
    final dateTime = find.date;
    final trainsDto = trains.map((e) => TrainDto.convertEntityToDto(e)).toList();
    return Entry(
      departStation: departStation,
      arriveStation: arriveStation,
      dateTime: dateTime,
      trains: trainsDto,
    );
  }

  @HiveField(0)
  final String departStation;
  @HiveField(1)
  final String arriveStation;
  @HiveField(2)
  final DateTime dateTime;
  @HiveField(3)
  final List<TrainDto> trains;

  @override
  int get hashCode => find.hashCode;

  Find get find => Find((b) =>
        b
          ..date = dateTime
          ..arriveStation = arriveStation
          ..departStation = departStation
      );

  @override
  bool operator ==(Object other) {
    return find == other;
  }
}
