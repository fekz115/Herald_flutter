import 'package:Herald_flutter/redux/actions.dart';
import 'package:Herald_flutter/redux/app_state.dart';
import 'package:Herald_flutter/services/train_load_service.dart';
import 'package:built_redux/built_redux.dart';

Middleware<AppState, AppStateBuilder, AppActions> createMiddleware(
    TrainLoadService service) {
  return (MiddlewareBuilder<AppState, AppStateBuilder, AppActions>()
        ..add(AppActionsNames.searchAction,
            createLoadingTrainsMiddleware<Null>(service)))
      .build();
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, T>
    createLoadingTrainsMiddleware<T>(TrainLoadService service) {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<T> action) async {
    next(action);
    var response = await service.loadTrains(api.state.initialScreenState.find);
    api.actions.serviceResponseAction(response);
  };
}
