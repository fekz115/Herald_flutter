import 'dart:convert';

import 'package:Herald_flutter/model/place.dart';
import 'package:Herald_flutter/model/train_type.dart';

import 'package:Herald_flutter/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'train.g.dart';

abstract class Train implements Built<Train, TrainBuilder> {

  String get trainId;
  TrainType get type;
  String get departStation;
  String get arriveStation;
  DateTime get departTime;
  BuiltList<Place> get places;
  bool get reserved;
  bool get comfort;
  bool get speed;
  bool get accessible;
  Duration get duration;

  DateTime get arriveTime => departTime.add(duration);

  Train._();
  factory Train([updates(TrainBuilder b)]) = _$Train;

  String toJson() {
    return json
        .encode(serializers.serializeWith(Train.serializer, this));
  }

  static Train fromJson(String jsonString) {
    return serializers.deserializeWith(
        Train.serializer, json.decode(jsonString));
  }

  static Serializer<Train> get serializer => _$trainSerializer;

}