import 'dart:async';

import 'package:Herald_flutter/model/find.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'find_event.dart';
part 'find_state.dart';

class FindBloc extends Bloc<FindEvent, FindState> {

  Find _state = Find("", "", DateTime.now());

  @override
  FindState get initialState => InitialFindState(_state);

  @override
  Stream<FindState> mapEventToState(
    FindEvent event,
  ) async* {
    if(event is SetArriveStation) {
      _state = Find(_state.departStation, event.arriveStation, _state.date);
    } else if(event is SetDepartStation) {
      _state = Find(event.departStation, _state.arriveStation, _state.date);
    } else if(event is SetDate) {
      _state = Find(_state.departStation, _state.arriveStation, event.date);
      yield(InitialFindState(_state));
    } else if(event is SearchEvent) {
      yield SearchState(_state);
    } // TODO: refactor this
    // TODO: add validation
  }

}
