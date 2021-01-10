import 'package:Herald/model/train.dart';

// ignore: one_member_abstracts
abstract class ParseService {
  List<Train> parseTrains(String response);
}