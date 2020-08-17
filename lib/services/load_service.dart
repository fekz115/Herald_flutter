import 'package:Herald_flutter/model/find.dart';

abstract class LoadService {
  Future<String> loadPage(Find find);
}