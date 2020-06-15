import 'package:Herald_flutter/services/html_parser_service.dart';
import 'package:Herald_flutter/services/parse_service.dart';
import 'package:flutter_test/flutter_test.dart';

import 'testfiles/parser/page1.dart';
import 'testfiles/parser/page2.dart';

void main() {

  ParseService parseService = HtmlParserService();
  Map<String, int> pages = {
    testPage1: 7,
    testPage2: 8,
  };
  int i = 1;
  pages.forEach((key, value) {
    test('Page test $i', () {
      var trains = parseService.parseTrains(key);
      assert(trains.length == value);
    });
    i++;
  });
}