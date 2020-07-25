import 'dart:convert';

import 'package:Herald_flutter/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'station_text_input_state.g.dart';

abstract class StationTextInputState
    implements Built<StationTextInputState, StationTextInputStateBuilder> {
  String get value;

  StationTextInputState._();
  factory StationTextInputState([updates(StationTextInputStateBuilder b)]) =
      _$StationTextInputState;

  String toJson() {
    return json.encode(
        serializers.serializeWith(StationTextInputState.serializer, this));
  }

  static StationTextInputState fromJson(String jsonString) {
    return serializers.deserializeWith(
        StationTextInputState.serializer, json.decode(jsonString));
  }

  static Serializer<StationTextInputState> get serializer =>
      _$stationTextInputStateSerializer;
}
