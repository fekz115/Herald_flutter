import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/model/place.dart';
import 'package:Herald_flutter/model/place_type.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/model/train_type.dart';
import 'package:Herald_flutter/redux/app_state.dart';
import 'package:Herald_flutter/redux/state/initial_screen_state.dart';
import 'package:Herald_flutter/redux/state/station_text_input_state.dart';
import 'package:Herald_flutter/redux/state/trains_screen_state.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Find,
  PlaceType,
  Place,
  Train,
  TrainType,
  AppState,
  StationTextInputState,
  InitialScreenState,
  TrainsLoadedScreenState,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();