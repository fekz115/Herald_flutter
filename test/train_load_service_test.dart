import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/services/html_parser_service.dart';
import 'package:Herald_flutter/services/http_load_service.dart';
import 'package:Herald_flutter/services/train_load_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:Herald_flutter/services/service_response.dart';

var finds = [
  Find((b) => b
    ..arriveStation = 'Гомель'
    ..departStation = 'Прибор'
    ..date = DateTime.now()),
  Find((b) => b
    ..arriveStation = 'Гомель'
    ..departStation = 'Минск'
    ..date = DateTime.now()),
];

void main() {
  final TrainLoadService service = TrainLoadService(
    HttpLoadService(),
    HtmlParserService(),
  );
  int i = 1;
  for (final find in finds) {
    test('Integration test $i', () async {
      final response = await service.loadTrains(find);
      if (response is TrainsLoadedResponse) {
        assert(response.trains.isNotEmpty);
      } else if (response is ParseExceptionResponse) {
        throw response.exception;
      } else {
        throw Exception(
            'Unexpected type of response: ${response.runtimeType.toString()}');
      }
      i++;
    });
  }
}
