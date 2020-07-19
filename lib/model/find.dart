import 'dart:convert';

import 'package:Herald_flutter/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'find.g.dart';

abstract class Find implements Built<Find, FindBuilder> {
  
  String get departStation;
  String get arriveStation;
  DateTime get date;

  Find._();
  factory Find([updates(FindBuilder b)]) = _$Find;

  String toJson() {
    return json
        .encode(serializers.serializeWith(Find.serializer, this));
  }

  static Find fromJson(String jsonString) {
    return serializers.deserializeWith(
        Find.serializer, json.decode(jsonString));
  }

  static Serializer<Find> get serializer => _$findSerializer;

}