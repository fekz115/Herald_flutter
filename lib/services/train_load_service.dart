import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/services/exceptions/parse_exception.dart';
import 'package:Herald_flutter/services/load_service.dart';
import 'package:Herald_flutter/services/parse_service.dart';
import 'package:Herald_flutter/services/service_response.dart';

class TrainLoadService {
  final LoadService _loadService;
  final ParseService _parseService;

  TrainLoadService(this._loadService, this._parseService);

  Future<ServiceResponse> loadTrains(Find find) async {
    try {
      List<Train> trains = await _loadService
        .loadPage(find)
        .then((value) => _parseService.parseTrains(value.body).map((train) {
              var newDepartDate = DateTime(
                find.date.year,
                find.date.month,
                find.date.day,
                train.departTime.hour,
                train.departTime.minute,
                train.departTime.second,
              );
              return train.rebuild((b) => b..departTime = newDepartDate);
            }).toList());
      return TrainsLoadedResponse(trains);
    } on ParseException catch(e) {
      return ParseExceptionResponse(e);
    }
  }
}
