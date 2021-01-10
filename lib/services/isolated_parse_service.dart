import 'package:Herald/model/train.dart';
import 'package:Herald/services/html_parser_service.dart';
import 'package:Herald/services/parse_service.dart';
import 'package:flutter/foundation.dart';

class IsolatedParseService extends ParseService {

  @override
  Future<List<Train>> parseTrains(String response) {
    return compute(_parse, response);
  }

}

Future<List<Train>> _parse(String response) async {
  return HtmlParserService().parseTrains(response);
}