import 'package:Herald_flutter/services/exceptions/parse_exception.dart';
import 'package:Herald_flutter/services/html_parser_service.dart';
import 'package:Herald_flutter/services/parse_service.dart';
import 'package:flutter_test/flutter_test.dart';

import 'testfiles/parser/page1.dart';
import 'testfiles/parser/page2.dart';
import 'testfiles/parser/page3.dart';
import 'testfiles/parser/page4.dart';
import 'testfiles/parser/page5.dart';
import 'testfiles/parser/page6.dart';
import 'testfiles/parser/page7.dart';
import 'testfiles/parser/page8.dart';

void main() {
  group('Correct pages tests', correctPagesTests);
  group('Tests without direct way', withoutDirectWayTests);
  group('Tests where station not found', stationNotFoundTests);
  group('Tests where station name is too short', tooShortTests);
}

void correctPagesTests() {
  final ParseService parseService = HtmlParserService();
  final List<String> pages = [
    testPage1,
    testPage2,
  ];
  int i = 1;
  for(final page in pages) {
    test('Correct page test $i', () {
      expect(parseService.parseTrains(page), isNotEmpty);
    });
    i++;
  }
}

void withoutDirectWayTests() {
  final ParseService parseService = HtmlParserService();
  test('Error test - there is not direct way 1', () {
    expect(() => parseService.parseTrains(testPage3),
        throwsA(isInstanceOf<ParseException>()));
  });
}

void stationNotFoundTests() {
  final ParseService parseService = HtmlParserService();
  test('Error test - station not found 1', () {
    expect(() => parseService.parseTrains(testPage4),
        throwsA(isInstanceOf<StationNotFoundException>()));
  });
  test('Error test - station not found 2', () {
    expect(() => parseService.parseTrains(testPage5),
        throwsA(isInstanceOf<StationNotFoundException>()));
  });
  test('Error test - station not found 3', () {
    expect(() => parseService.parseTrains(testPage6),
        throwsA(isInstanceOf<ParseException>()));
  });
}

void tooShortTests() {
  final ParseService parseService = HtmlParserService();
  test('Error test - too short 1', () {
    expect(() => parseService.parseTrains(testPage7),
        throwsA(isInstanceOf<TooShortException>()));
  });
  test('Error test - too short 2', () {
    expect(() => parseService.parseTrains(testPage8),
        throwsA(isInstanceOf<TooShortException>()));
  });
}