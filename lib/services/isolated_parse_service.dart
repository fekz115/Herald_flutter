import 'package:Herald/model/train.dart';
import 'package:Herald/services/html_parser_service.dart';
import 'package:Herald/services/parse_service.dart';
import 'package:flutter/foundation.dart';

class IsolatedParseService extends ParseService {

  IsolatedParseService(this._parseService);

  final ParseService _parseService;

  @override
  Future<List<Train>> parseTrains(String response) {
    return compute(_parse, IsolatedParseFunctionArgs(_parseService, response));
  }

}

class IsolatedParseFunctionArgs {

  IsolatedParseFunctionArgs(this.parseService, this.response);

  final ParseService parseService;
  final String response;

}

Future<List<Train>> _parse(IsolatedParseFunctionArgs args) async {
  return args.parseService.parseTrains(args.response);
}