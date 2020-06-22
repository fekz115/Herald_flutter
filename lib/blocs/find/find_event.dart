part of 'find_bloc.dart';

abstract class FindEvent extends Equatable {}

class SetDepartStation extends FindEvent {
  
  final String _departStation;

  SetDepartStation(this._departStation);

  String get departStation
    => _departStation;

  @override
  List<Object> get props => [departStation];

}

class SetArriveStation extends FindEvent {
  
  final String _arriveStation;

  SetArriveStation(this._arriveStation);

  String get arriveStation
    => _arriveStation;

  @override
  List<Object> get props => [arriveStation];

}

class SetDate extends FindEvent {

  final DateTime _date;

  SetDate(this._date);

  DateTime get date
    => _date;

  @override
  List<Object> get props => [date];

}

class SearchEvent extends FindEvent {
  
  @override
  List<Object> get props => [];

}

class RefreshEvent extends FindEvent {
  
  @override
  List<Object> get props => [];

}