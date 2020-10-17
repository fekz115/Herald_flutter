import 'dart:convert';

import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/serializers.dart';
import 'package:Herald_flutter/services/exceptions/parse_exception.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:sealed_class/sealed_class.dart';

part 'trains_screen_state.g.dart';

@Sealed([
  TrainsLoadedScreenState,
  TrainsParseExceptionScreenState,
  TrainsExceptionScreenState,
  TrainsLoadingScreenState
])
abstract class TrainsScreenState {
  @nullable
  Find get find;
}

abstract class TrainsLoadedScreenState
    implements
        Built<TrainsLoadedScreenState, TrainsLoadedScreenStateBuilder>,
        TrainsScreenState {
  factory TrainsLoadedScreenState(
      [TrainsLoadedScreenStateBuilder Function(TrainsLoadedScreenStateBuilder b)
          updates]) = _$TrainsLoadedScreenState;
  TrainsLoadedScreenState._();

  BuiltList<Train> get trains;

  String toJson() {
    return json.encode(
        serializers.serializeWith(TrainsLoadedScreenState.serializer, this));
  }

  static TrainsLoadedScreenState fromJson(String jsonString) {
    return serializers.deserializeWith(
        TrainsLoadedScreenState.serializer, json.decode(jsonString));
  }

  static Serializer<TrainsLoadedScreenState> get serializer =>
      _$trainsLoadedScreenStateSerializer;
}

abstract class TrainsParseExceptionScreenState
    implements
        Built<TrainsParseExceptionScreenState,
            TrainsParseExceptionScreenStateBuilder>,
        TrainsScreenState {
  factory TrainsParseExceptionScreenState(
      [TrainsParseExceptionScreenStateBuilder Function(
              TrainsParseExceptionScreenStateBuilder b)
          updates]) = _$TrainsParseExceptionScreenState;
  TrainsParseExceptionScreenState._();

  ParseException get exception;
}

abstract class TrainsExceptionScreenState
    implements
        Built<TrainsExceptionScreenState, TrainsExceptionScreenStateBuilder>,
        TrainsScreenState {
  factory TrainsExceptionScreenState(
      [TrainsExceptionScreenStateBuilder Function(
              TrainsExceptionScreenStateBuilder b)
          updates]) = _$TrainsExceptionScreenState;
  TrainsExceptionScreenState._();

  Exception get exception;
}

abstract class TrainsLoadingScreenState
    implements
        Built<TrainsLoadingScreenState, TrainsLoadingScreenStateBuilder>,
        TrainsScreenState {
  factory TrainsLoadingScreenState(
      [TrainsLoadingScreenStateBuilder Function(
              TrainsLoadingScreenStateBuilder b)
          updates]) = _$TrainsLoadingScreenState;
  TrainsLoadingScreenState._();
}
