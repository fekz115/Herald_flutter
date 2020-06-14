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