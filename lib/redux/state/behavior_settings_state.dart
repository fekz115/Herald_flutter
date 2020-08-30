import 'dart:convert';

import 'package:Herald_flutter/redux/state/cached_state.dart';
import 'package:Herald_flutter/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'behavior_settings_state.g.dart';

abstract class BehaviorSettingsState
    implements Built<BehaviorSettingsState, BehaviorSettingsStateBuilder> {

  CachedState get cachedState;

  BehaviorSettingsState._();
  factory BehaviorSettingsState([updates(BehaviorSettingsStateBuilder b)]) =
      _$BehaviorSettingsState;

  String toJson() {
    return json.encode(
        serializers.serializeWith(BehaviorSettingsState.serializer, this));
  }

  static BehaviorSettingsState fromJson(String jsonString) {
    return serializers.deserializeWith(
        BehaviorSettingsState.serializer, json.decode(jsonString));
  }

  static Serializer<BehaviorSettingsState> get serializer =>
      _$behaviorSettingsStateSerializer;
}