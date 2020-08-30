import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/navigation.gr.dart';
import 'package:Herald_flutter/redux/actions.dart';
import 'package:Herald_flutter/redux/actions_args.dart';
import 'package:Herald_flutter/redux/app_state.dart';
import 'package:Herald_flutter/services/persistence/persistence_service.dart';
import 'package:Herald_flutter/services/service_response.dart';
import 'package:Herald_flutter/services/train_load_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:built_redux/built_redux.dart';

Middleware<AppState, AppStateBuilder, AppActions> createMiddleware(
    TrainLoadService service, PersistenceService persistenceService) {
  return (MiddlewareBuilder<AppState, AppStateBuilder, AppActions>()
        ..add(AppActionsNames.searchAction, createOnSearchMiddleware<Null>())
        ..add(AppActionsNames.refreshAction,
            createOnRefreshMiddleware<Null>(service))
        ..add(AppActionsNames.showTrainsPage,
            createNavigateToTrainsMiddleware<Null>())
        ..add(AppActionsNames.showSettingsPage,
            createNavigateToSettingsMiddleware<Null>())
        ..add(AppActionsNames.showInterfaceSettingsPage,
            createNavigateToInterfaceSettingsMiddleware<Null>())
        ..add(AppActionsNames.showBehaviorSettings,
            createNavigateToBehaviorSettingsMiddleware<Null>())
        ..add(AppActionsNames.showCached, createNavigateToCachedMiddleware())
        ..add(AppActionsNames.goBack, createNavigateBackMiddleware<Null>())
        ..add(AppActionsNames.appInit,
            createInitAppMiddleware(persistenceService))
        ..add(AppActionsNames.appClose,
            createCloseAppMiddleware(persistenceService))
        ..add(AppActionsNames.getCached,
            createGetCachedMiddleware(persistenceService))
        ..add(AppActionsNames.findCached,
            createFindCachedMiddleware(persistenceService))
        ..add(AppActionsNames.openCached,
            createOpenCachedMiddleware(persistenceService))
        ..add(AppActionsNames.found,
            createFoundMiddleware())
        ..add(AppActionsNames.save, createSaveMiddleware(persistenceService))
        ..add(AppActionsNames.clearCache, createClearCachedMiddleware(persistenceService)))
      .build();
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, T>
    createOnSearchMiddleware<T>() {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<T> action) async {
    api.actions.showTrainsPage();
    if (api.state.trainsScreenState.find != api.state.initialScreenState.find) {
      next(action);
      api.actions.findCached(api.state.initialScreenState.find);
    }
  };
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, T>
    createOnRefreshMiddleware<T>(TrainLoadService service) {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<T> action) async {
    next(action);
    ServiceResponse response =
        await service.loadTrains(api.state.trainsScreenState.find);
    response.continued(
        (r) => {
              api.actions.save(SaveFindToPersistanceRequest(
                  api.state.trainsScreenState.find, r.trains))
            },
        (r) => {},
        (r) => {});
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

MiddlewareHandler<AppState, AppStateBuilder, AppActions, T>
    createNavigateToBehaviorSettingsMiddleware<T>() {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<T> action) async {
    next(action);
    ExtendedNavigator.named("mainNav").push(Routes.behaviorSettingsPage);
  };
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, Null>
    createNavigateToCachedMiddleware() {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<Null> action) async {
    next(action);
    ExtendedNavigator.named("mainNav").push(Routes.cachedPage);
  };
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, T>
    createInitAppMiddleware<T>(PersistenceService persistenceService) {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<T> action) async {
    next(action);
    persistenceService.init();
  };
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, T>
    createCloseAppMiddleware<T>(PersistenceService persistenceService) {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<T> action) async {
    next(action);
    persistenceService.close();
  };
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, Null>
    createGetCachedMiddleware(PersistenceService persistenceService) {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<Null> action) async {
    next(action);
    final saved = await persistenceService.savedFinds();
    api.actions.saved(saved);
  };
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, Find>
    createFindCachedMiddleware(PersistenceService persistenceService) {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<Find> action) async {
    next(action);
    final found = await persistenceService.findTrains(action.payload);
    api.actions.found(found);
  };
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, DateTime>
    createClearCachedMiddleware(PersistenceService persistenceService) {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<DateTime> action) async {
    await persistenceService.clearCache(dateTime: action.payload);
    next(action);
  };
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions,
        SaveFindToPersistanceRequest>
    createSaveMiddleware<T>(PersistenceService persistenceService) {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<SaveFindToPersistanceRequest> action) async {
    next(action);
    final find = action.payload.find;
    final trains = action.payload.trains;
    await persistenceService.save(find, trains);
  };
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, Iterable<Train>>
    createFoundMiddleware<T>() {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<Iterable<Train>> action) async {
    if (action.payload != null) {
      next(action);
    } else {
      api.actions.refreshAction();
    }
  };
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, Find>
    createOpenCachedMiddleware(PersistenceService persistenceService) {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<Find> action) async {
    next(action);
    api.actions.showTrainsPage();
    api.actions.findCached(action.payload);
  };
}