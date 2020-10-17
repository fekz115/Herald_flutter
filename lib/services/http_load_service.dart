import 'package:Herald_flutter/model/find.dart';
import 'package:http/http.dart' as http;
import 'package:Herald_flutter/extensions.dart';
import 'package:Herald_flutter/services/load_service.dart';

class HttpLoadService extends LoadService {
  static const String BASE_URL = 'https://pass.rw.by/ru/route';

  @override
  Future<String> loadPage(Find find) async {
    return Future.value((await http.get(
            '$BASE_URL?from=${find.departStation}&to=${find.arriveStation}&date=${find.date.toStringOnlyDate()}'))
        .body);
  }
}
