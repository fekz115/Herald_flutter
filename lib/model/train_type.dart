import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'train_type.g.dart';

class TrainType extends EnumClass {
  const TrainType._(String name) : super(name);

  static const TrainType regionalEconomy = _$regionalEconomy;
  static const TrainType regionalBusiness = _$regionalBusiness;
  static const TrainType interregionalEconomy = _$interregionalEconomy;
  static const TrainType interregionalBusiness = _$interregionalBusiness;
  static const TrainType international = _$international;
  static const TrainType bus = _$bus;
  static const TrainType cityLines = _$cityLines;
  static const TrainType commercial = _$commercial;
  static const TrainType airport = _$airport;
  static const TrainType none = _$none;

  static BuiltSet<TrainType> get values => _$values;
  static TrainType valueOf(String name) => _$valueOf(name);
  static Serializer<TrainType> get serializer => _$trainTypeSerializer;
}
