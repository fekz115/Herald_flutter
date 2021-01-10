import 'dart:convert';

import 'package:Herald/navigation/pages.dart';
import 'package:Herald/redux/state/initial_screen_state.dart';
import 'package:Herald/redux/state/settings_state.dart';
import 'package:Herald/redux/state/trains_screen_state.dart';
import 'package:Herald/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([AppStateBuilder Function(AppStateBuilder b) updates]) =
      _$AppState;
  AppState._();

  InitialScreenState get initialScreenState;
  TrainsScreenState get trainsScreenState;
  SettingsState get settingsState;

  BuiltList<Pages> get navigationStack;

  String toJson() {
    return json.encode(serializers.serializeWith(AppState.serializer, this));
  }

  static AppState fromJson(String jsonString) {
    return serializers.deserializeWith(
        AppState.serializer, json.decode(jsonString));
  }

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
