import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/services/load_service.dart';
import 'package:Herald_flutter/services/parse_service.dart';

class TrainLoadService {
  final LoadService _loadService;
  final ParseService _parseService;

  TrainLoadService(this._loadService, this._parseService);

  Future<Iterable<Train>> loadTrains(Find find) {
    return _loadService
        .loadPage(find)
        .then((value) =>
          _parseService.parseTrains(value.body)
            .map((train) {
              var newDepartDate = DateTime(
                find.date.year,
                find.date.month,
                find.date.day,
                train.departTime.hour,
                train.departTime.minute,
                train.departTime.second,
              );
              var train1 = Train(
                train.trainId,
                train.type,
                train.departStation,
                train.arriveStation,
                newDepartDate,
                train.places,
                train.reserved,
                train.comfort,
                train.speed,
                train.accessible,
                train.duration
              );
              return train1;
            }).toList()
    );
  }
}
