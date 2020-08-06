import 'dart:convert';

import 'package:Herald_flutter/redux/state/initial_screen_state.dart';
import 'package:Herald_flutter/redux/state/settings_state.dart';
import 'package:Herald_flutter/redux/state/trains_screen_state.dart';
import 'package:Herald_flutter/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  InitialScreenState get initialScreenState;
  TrainsScreenState get trainsScreenState;
  SettingsState get settingsState;

  AppState._();
  factory AppState([updates(AppStateBuilder b)]) = _$AppState;

  String toJson() {
    return json.encode(serializers.serializeWith(AppState.serializer, this));
  }

  static AppState fromJson(String jsonString) {
    return serializers.deserializeWith(
        AppState.serializer, json.decode(jsonString));
  }

  static Serializer<AppState> get serializer => _$appStateSerializer;
}