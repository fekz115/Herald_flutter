import 'package:Herald/model/find.dart';

// ignore: one_member_abstracts
abstract class LoadService {
  Future<String> loadPage(Find find);
}