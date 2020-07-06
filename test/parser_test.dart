import 'package:Herald_flutter/services/html_parser_service.dart';
import 'package:Herald_flutter/services/parse_service.dart';
import 'package:flutter_test/flutter_test.dart';

import 'testfiles/parser/page1.dart';
import 'testfiles/parser/page2.dart';

void main() {

  ParseService parseService = HtmlParserService();
  List<String> pages = [
    testPage1,
    testPage2,
  ];
  int i = 1;
  pages.forEach((page) {
    test('Page test $i', () {
      var trains = parseService.parseTrains(page);
      assert(trains.length != 0);
    });
    i++;
  });
  
}