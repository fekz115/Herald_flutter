import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/model/place.dart';
import 'package:Herald_flutter/model/place_type.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/model/train_type.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Find,
  PlaceType,
  Place,
  Train,
  TrainType,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();