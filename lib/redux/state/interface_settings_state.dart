import 'dart:convert';

import 'package:Herald_flutter/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'interface_settings_state.g.dart';

abstract class InterfaceSettingsState
    implements Built<InterfaceSettingsState, InterfaceSettingsStateBuilder> {
  bool get useDarkTheme;

  InterfaceSettingsState._();
  factory InterfaceSettingsState([updates(InterfaceSettingsStateBuilder b)]) =
      _$InterfaceSettingsState;

  String toJson() {
    return json.encode(
        serializers.serializeWith(InterfaceSettingsState.serializer, this));
  }

  static InterfaceSettingsState fromJson(String jsonString) {
    return serializers.deserializeWith(
        InterfaceSettingsState.serializer, json.decode(jsonString));
  }

  static Serializer<InterfaceSettingsState> get serializer =>
      _$interfaceSettingsStateSerializer;
}
