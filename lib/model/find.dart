import 'dart:convert';

import 'package:Herald/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'find.g.dart';

abstract class Find implements Built<Find, FindBuilder> {
  factory Find([FindBuilder Function(FindBuilder b) updates]) = _$Find;
  Find._();

  String get departStation;
  String get arriveStation;
  DateTime get date;

  String toJson() {
    return json.encode(serializers.serializeWith(Find.serializer, this));
  }

  static Find fromJson(String jsonString) {
    return serializers.deserializeWith(
        Find.serializer, json.decode(jsonString));
  }

  static Serializer<Find> get serializer => _$findSerializer;
}
