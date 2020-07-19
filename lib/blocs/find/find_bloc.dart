import 'dart:async';

import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/services/exceptions/parse_exception.dart';
import 'package:Herald_flutter/services/train_load_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'find_event.dart';
part 'find_state.dart';

class FindBloc extends Bloc<FindEvent, FindState> {
  final TrainLoadService _trainLoadService;
  Find _state;

  FindBloc(this._trainLoadService, FindState initialState) : super(initialState) {
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
      try {
        var trains = await _trainLoadService
            .loadTrains(_state)
            .catchError((error) => throw error);
        yield LoadedState(trains, _state);
      } on ParseException catch (e) {
        yield ErrorParsingState(e, _state);
      } catch (e) {
        yield ErrorLoadingState(e, _state);
      }
    } // TODO: refactor this
    // TODO: add validation
  }
}
