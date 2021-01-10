import 'package:Herald/model/find.dart';
import 'package:Herald/model/train.dart';
import 'package:Herald/services/exceptions/parse_exception.dart';
import 'package:Herald/services/load_service.dart';
import 'package:Herald/services/parse_service.dart';
import 'package:Herald/services/service_response.dart';

class TrainLoadService {
  const TrainLoadService(this._loadService, this._parseService);

  final LoadService _loadService;
  final ParseService _parseService;

  Future<ServiceResponse> loadTrains(Find find) async {
    try {
      final String page = await _loadService.loadPage(find);
      final List<Train> trains = (await _parseService.parseTrains(page)).map((train) {
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
