part of 'find_bloc.dart';

abstract class FindState extends Equatable {
  final Find _find;

  FindState(this._find);

  Find get find
    => _find;

  @override
  List<Object> get props => [find.departStation, find.arriveStation, find.date];}

class InitialFindState extends FindState {
  InitialFindState(Find find) : super(find);
}

class SearchState extends FindState {
  SearchState(Find find) : super(find);
}

class RefreshState extends FindState {
  RefreshState(Find find) : super(find);
}

class ErrorLoadingState extends FindState {

  final Error _exception;

  ErrorLoadingState(this._exception, Find find) : super(find);

  Error get exception => _exception;

  @override
  List<Object> get props => [exception];

}

class ErrorParsingState extends FindState {

  final ParseException _exception;

  ErrorParsingState(this._exception, Find find) : super(find);

  ParseException get exception => _exception;

  @override
  List<Object> get props => [exception];

}

class LoadedState extends FindState {

  final List<Train> _trainList;

  LoadedState(this._trainList, Find find) : super(find);

  Iterable<Train> get trainList => _trainList;

  @override
  List<Object> get props => [trainList];

}