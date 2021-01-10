import 'dart:convert';

import 'package:Herald/model/find.dart';
import 'package:Herald/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cached_state.g.dart';

abstract class CachedState implements Built<CachedState, CachedStateBuilder> {
  factory CachedState(
          [CachedStateBuilder Function(CachedStateBuilder b) updates]) =
      _$CachedState;
  CachedState._();

  @nullable
  BuiltList<Find> get cached;

  String toJson() {
    return json.encode(serializers.serializeWith(CachedState.serializer, this));
  }

  static CachedState fromJson(String jsonString) {
    return serializers.deserializeWith(
        CachedState.serializer, json.decode(jsonString));
  }

  static Serializer<CachedState> get serializer => _$cachedStateSerializer;
}
