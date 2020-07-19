import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/services/html_parser_service.dart';
import 'package:Herald_flutter/services/http_load_service.dart';
import 'package:Herald_flutter/services/train_load_service.dart';
import 'package:flutter_test/flutter_test.dart';

var finds = [
  Find((b) => {
        b
          ..arriveStation = "Гомель"
          ..departStation = "Прибор"
          ..date = DateTime.now()
      }),
  Find((b) => {
        b
          ..arriveStation = "Гомель"
          ..departStation = "Минск"
          ..date = DateTime.now()
      }),
];

void main() {
  TrainLoadService service = TrainLoadService(
    HttpLoadService(),
    HtmlParserService(),
  );
  int i = 1;
  finds.forEach((find) {
    test('Integration test $i', () async {
      var trains = await service.loadTrains(find);
      assert(trains.isNotEmpty);
    });
    i++;
  });
}
