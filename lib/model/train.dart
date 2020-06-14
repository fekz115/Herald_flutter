import 'package:Herald_flutter/model/place.dart';

class Train {
  final String _trainId;
  final TrainType _type;
  final String _departStation;
  final String _arriveStation;
  final DateTime _departTime;
  final DateTime _arriveTime;
  final List<Place> _places;
  final String _nonStop;
  final String _days;
  final bool _reserved;
  final bool _comfort;
  final bool _speed;

  Train(this._trainId, this._type, this._departStation, this._arriveStation, this._departTime, this._arriveTime, this._places, this._nonStop, this._days, this._reserved, this._comfort, this._speed);

  String get trainId => _trainId;
  TrainType get type => _type;
  String get departStation => _departStation;
  String get arriveStation => _arriveStation;
  DateTime get departTime => _departTime;
  DateTime get arriveTime => _arriveTime;
  List<Place> get places => _places;
  String get nonStop => _nonStop;
  String get days => _days;
  bool get reserved => _reserved;
  bool get comfort => _comfort;
  bool get speed => _speed;

}

enum TrainType {
  RegionalEconom, 
  RegionalBusiness, 
  InterregionalEconom, 
  InterregionalBusiness, 
  International, 
  Bus, 
  CityLines, 
  CommonType,
}