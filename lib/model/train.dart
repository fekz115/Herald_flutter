import 'package:Herald_flutter/model/place.dart';

class Train {

  final String trainId;
  final TrainType type;
  final String departStation;
  final String arriveStation;
  final DateTime departTime;
  final List<Place> places;
  final bool reserved;
  final bool comfort;
  final bool speed;
  final bool accessible;
  final Duration duration;

  DateTime get arriveTime => departTime.add(duration);

  Train(this.trainId, this.type, this.departStation, this.arriveStation, this.departTime, this.places, this.reserved, this.comfort, this.speed, this.accessible, this.duration);

}

enum TrainType {
  RegionalEconom, 
  RegionalBusiness, 
  InterregionalEconom, 
  InterregionalBusiness, 
  International, 
  Bus, 
  CityLines,
  Commercial,
  Airport, 
  CommonType,
}