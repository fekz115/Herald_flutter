import 'dart:convert';

import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/serializers.dart';
import 'package:Herald_flutter/services/exceptions/parse_exception.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:html/parser.dart';
import 'package:sealed_class/sealed_class.dart';

part 'trains_screen_state.g.dart';

@Sealed([
  TrainsLoadedScreenState,
  TrainsParseExceptionScreenState,
  TrainsExceptionScreenState,
  TrainsLoadingScreenState
])
abstract class TrainsScreenState {}

abstract class TrainsLoadedScreenState
    implements
        Built<TrainsLoadedScreenState, TrainsLoadedScreenStateBuilder>,
        TrainsScreenState {
  BuiltList<Train> get trains;

  TrainsLoadedScreenState._();
  factory TrainsLoadedScreenState([updates(TrainsLoadedScreenStateBuilder b)]) =
      _$TrainsLoadedScreenState;

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
  ParseException get exception;

  TrainsParseExceptionScreenState._();
  factory TrainsParseExceptionScreenState(
          [updates(TrainsParseExceptionScreenStateBuilder b)]) =
      _$TrainsParseExceptionScreenState;
}

abstract class TrainsExceptionScreenState
    implements
        Built<TrainsExceptionScreenState, TrainsExceptionScreenStateBuilder>,
        TrainsScreenState {
  Exception get exception;

  TrainsExceptionScreenState._();
  factory TrainsExceptionScreenState(
          [updates(TrainsExceptionScreenStateBuilder b)]) =
      _$TrainsExceptionScreenState;
}

abstract class TrainsLoadingScreenState
    implements
        Built<TrainsLoadingScreenState, TrainsLoadingScreenStateBuilder>,
        TrainsScreenState {
  TrainsLoadingScreenState._();
  factory TrainsLoadingScreenState(
          [updates(TrainsLoadingScreenStateBuilder b)]) =
      _$TrainsLoadingScreenState;
}
