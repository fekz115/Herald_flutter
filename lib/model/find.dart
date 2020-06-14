class Find {
  
  final String _departStation;
  final String _arriveStation;
  final DateTime _date;

  String get departStation
    => _departStation;

  String get arriveStation
    => _arriveStation;

  DateTime get date
    => _date;

  Find(this._departStation, this._arriveStation, this._date);

}