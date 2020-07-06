import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/services/html_parser_service.dart';
import 'package:Herald_flutter/services/http_load_service.dart';
import 'package:Herald_flutter/services/train_load_service.dart';
import 'package:flutter_test/flutter_test.dart';

var finds = [
  Find("Гомель", "Прибор", DateTime.now()),
  Find("Гомель", "Минск", DateTime.now()),
  Find("Прибор", "Гомель", DateTime.now()),
  Find("Минск", "Гомель", DateTime.now()),
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
    });
    i++;
  });
}
