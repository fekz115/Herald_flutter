import 'dart:convert';

import 'package:Herald/redux/state/behavior_settings_state.dart';
import 'package:Herald/redux/state/interface_settings_state.dart';
import 'package:Herald/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'settings_state.g.dart';

abstract class SettingsState
    implements Built<SettingsState, SettingsStateBuilder> {
  factory SettingsState(
          [SettingsStateBuilder Function(SettingsStateBuilder b) updates]) =
      _$SettingsState;
  SettingsState._();

  InterfaceSettingsState get interfaceSettingsState;
  BehaviorSettingsState get behaviorSettingsState;

  String toJson() {
    return json
        .encode(serializers.serializeWith(SettingsState.serializer, this));
  }

  static SettingsState fromJson(String jsonString) {
    return serializers.deserializeWith(
        SettingsState.serializer, json.decode(jsonString));
  }

  static Serializer<SettingsState> get serializer => _$settingsStateSerializer;
}
