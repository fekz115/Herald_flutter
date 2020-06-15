import 'dart:io';

import 'package:Herald_flutter/model/find.dart';
import 'package:http/http.dart' as http;

abstract class LoadService {
  Future<http.Response> loadPage(Find find);
}