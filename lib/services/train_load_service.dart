import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/services/exceptions/parse_exception.dart';
import 'package:Herald_flutter/services/load_service.dart';
import 'package:Herald_flutter/services/parse_service.dart';
import 'package:Herald_flutter/services/service_response.dart';

class TrainLoadService {
  const TrainLoadService(this._loadService, this._parseService);

  final LoadService _loadService;
  final ParseService _parseService;

  Future<ServiceResponse> loadTrains(Find find) async {
    try {
      final String page = await _loadService.loadPage(find);
      final List<Train> trains = _parseService.parseTrains(page).map((train) {
        final newDepartDate = DateTime(
          find.date.year,
          find.date.month,
          find.date.day,
          train.departTime.hour,
          train.departTime.minute,
          train.departTime.second,
        );
        return train.rebuild((b) => b..departTime = newDepartDate);
      }).toList();
      return TrainsLoadedResponse(trains: trains);
    } on ParseException catch (e) {
      return ParseExceptionResponse(exception: e);
    }
  }
}
