import 'package:Herald_flutter/model/place.dart';

class Train {
  final String _trainId;
  final TrainType _type;
  final String _departStation;
  final String _arriveStation;
  final DateTime _departTime;
  final List<Place> _places;
  final bool _reserved;
  final bool _comfort;
  final bool _speed;
  final bool _accessible;
  final Duration _duration;

  Train(this._trainId, this._type, this._departStation, this._arriveStation, this._departTime, this._places, this._reserved, this._comfort, this._speed, this._accessible, this._duration);

  String get trainId => _trainId;
  TrainType get type => _type;
  String get departStation => _departStation;
  String get arriveStation => _arriveStation;
  DateTime get departTime => _departTime;
  DateTime get arriveTime => _departTime.add(_duration);
  Duration get duration => _duration;
  List<Place> get places => _places;
  bool get reserved => _reserved;
  bool get comfort => _comfort;
  bool get speed => _speed;
  bool get accessible => _accessible;

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