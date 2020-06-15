import 'package:Herald_flutter/model/train.dart';

abstract class ParseService {
  List<Train> parseTrains(String response);
}