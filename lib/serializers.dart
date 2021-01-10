import 'package:Herald/model/find.dart';
import 'package:Herald/model/place.dart';
import 'package:Herald/model/place_type.dart';
import 'package:Herald/model/train.dart';
import 'package:Herald/model/train_type.dart';
import 'package:Herald/redux/app_state.dart';
import 'package:Herald/redux/state/behavior_settings_state.dart';
import 'package:Herald/redux/state/cached_state.dart';
import 'package:Herald/redux/state/initial_screen_state.dart';
import 'package:Herald/redux/state/interface_settings_state.dart';
import 'package:Herald/redux/state/settings_state.dart';
import 'package:Herald/redux/state/station_text_input_state.dart';
import 'package:Herald/redux/state/trains_screen_state.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';

part 'serializers.g.dart';

@SerializersFor([
  Find,
  PlaceType,
  Place,
  Train,
  TrainType,
  AppState,
  StationTextInputState,
  InitialScreenState,
  TrainsLoadedScreenState,
  SettingsState,
  InterfaceSettingsState,
  Currency,
  CurrencyDisplaying,
  BehaviorSettingsState,
  CachedState,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
