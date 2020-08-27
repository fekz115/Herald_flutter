import 'package:Herald_flutter/navigation.gr.dart';
import 'package:Herald_flutter/redux/actions.dart';
import 'package:Herald_flutter/redux/app_state.dart';
import 'package:Herald_flutter/services/train_load_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:built_redux/built_redux.dart';

Middleware<AppState, AppStateBuilder, AppActions> createMiddleware(
    TrainLoadService service) {
  return (MiddlewareBuilder<AppState, AppStateBuilder, AppActions>()
        ..add(AppActionsNames.searchAction,
            createOnSearchMiddleware<Null>())
        ..add(AppActionsNames.refreshAction,
            createOnRefreshMiddleware<Null>(service))
        ..add(AppActionsNames.showTrainsPage,
            createNavigateToTrainsMiddleware<Null>())
        ..add(AppActionsNames.showSettingsPage,
            createNavigateToSettingsMiddleware<Null>())
        ..add(AppActionsNames.showInterfaceSettingsPage,
            createNavigateToInterfaceSettingsMiddleware<Null>())
        ..add(AppActionsNames.goBack,
            createNavigateBackMiddleware<Null>()))
      .build();
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, T>
    createOnSearchMiddleware<T>() {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<T> action) async {
    next(action);
    api.actions.showTrainsPage();
    api.actions.refreshAction();
  };
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, T>
createOnRefreshMiddleware<T>(TrainLoadService service) {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<T> action) async {
    next(action);
    var response = await service.loadTrains(api.state.initialScreenState.find);
    api.actions.serviceResponseAction(response);
  };
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, T>
    createNavigateToTrainsMiddleware<T>() {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<T> action) async {
    next(action);
    ExtendedNavigator.named("mainNav").push(Routes.trainsPage);
  };
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, T>
    createNavigateToSettingsMiddleware<T>() {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<T> action) async {
    next(action);
    ExtendedNavigator.named("mainNav").push(Routes.settingsPage);
  };
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, T>
    createNavigateToInterfaceSettingsMiddleware<T>() {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<T> action) async {
    next(action);
    ExtendedNavigator.named("mainNav").push(Routes.interfaceSettingsPage);
  };
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, T>
    createNavigateBackMiddleware<T>() {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<T> action) async {
    next(action);
    ExtendedNavigator.named("mainNav").pop();
  };
}
