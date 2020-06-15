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
              var newArriveDate = DateTime(
                find.date.year,
                find.date.month,
                find.date.day,
                train.arriveTime.hour,
                train.arriveTime.minute,
                train.arriveTime.second,
              );
              if(newDepartDate.isAfter(newArriveDate)) {
                newArriveDate = newArriveDate.add(Duration(days: 1));
              }
              var train1 = Train(
                train.trainId,
                train.type,
                train.departStation,
                train.arriveStation,
                newDepartDate,
                newArriveDate,
                train.places,
                train.nonStop,
                train.days,
                train.reserved,
                train.comfort,
                train.speed,
              );
              return train1;
            }).toList()
    );
  }
}
