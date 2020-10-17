import 'dart:convert';

import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/redux/state/station_text_input_state.dart';
import 'package:Herald_flutter/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'initial_screen_state.g.dart';

abstract class InitialScreenState
    implements Built<InitialScreenState, InitialScreenStateBuilder> {
  factory InitialScreenState(
      [InitialScreenStateBuilder Function(InitialScreenStateBuilder b)
          updates]) = _$InitialScreenState;
  InitialScreenState._();

  StationTextInputState get arriveStationTextInputState;
  StationTextInputState get departStationTextInputState;
  DateTime get date;

  Find get find => Find((b) => b
    ..arriveStation = arriveStationTextInputState.value
    ..departStation = departStationTextInputState.value
    ..date = date);

  String toJson() {
    return json
        .encode(serializers.serializeWith(InitialScreenState.serializer, this));
  }

  static InitialScreenState fromJson(String jsonString) {
    return serializers.deserializeWith(
        InitialScreenState.serializer, json.decode(jsonString));
  }

  static Serializer<InitialScreenState> get serializer =>
      _$initialScreenStateSerializer;
}
