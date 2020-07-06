import 'package:Herald_flutter/model/find.dart';
import 'package:http/http.dart' as http;
import 'package:Herald_flutter/extensions.dart';
import 'package:Herald_flutter/services/load_service.dart';

class HttpLoadService extends LoadService {

  String get BASE_URL => "https://pass.rw.by/ru/route";

  @override
  Future<http.Response> loadPage(Find find) {
    return http.get('$BASE_URL?from=${find.departStation}&to=${find.arriveStation}&date=${find.date.toStringOnlyDate()}');
  }

}