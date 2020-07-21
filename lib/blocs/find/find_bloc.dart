import 'dart:async';

import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/services/exceptions/parse_exception.dart';
import 'package:Herald_flutter/services/train_load_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:Herald_flutter/services/service_response.dart';

part 'find_event.dart';
part 'find_state.dart';

class FindBloc extends Bloc<FindEvent, FindState> {
  final TrainLoadService _trainLoadService;
  Find _state;

  FindBloc(this._trainLoadService, FindState initialState)
      : super(initialState) {
    _state = initialState.find;
  }

  @override
  Stream<FindState> mapEventToState(
    FindEvent event,
  ) async* {
    if (event is SetArriveStation) {
      _state = _state.rebuild((b) => b..arriveStation = event.arriveStation);
    } else if (event is SetDepartStation) {
      _state = _state.rebuild((b) => b..departStation = event.departStation);
    } else if (event is SetDate) {
      _state = _state.rebuild((b) => b..date = event.date);
      yield (InitialFindState(_state));
    } else if (event is SearchEvent || event is RefreshEvent) {
      if (event is SearchEvent)
        yield SearchState(_state);
      else
        yield RefreshState(_state);
      yield (await _trainLoadService.loadTrains(_state)).join(
        (response) => LoadedState(response.trains, _state),
        (response) => ErrorParsingState(response.exception, _state),
        (response) => ErrorLoadingState(response.exception, _state),
      );
    } // TODO: refactor this
    // TODO: add validation
  }
}
