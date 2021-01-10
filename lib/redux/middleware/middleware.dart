import 'package:Herald/model/find.dart';
import 'package:Herald/model/train.dart';
import 'package:Herald/navigation/pages.dart';
import 'package:Herald/redux/actions.dart';
import 'package:Herald/redux/actions_args.dart';
import 'package:Herald/redux/app_state.dart';
import 'package:Herald/services/persistence/persistence_service.dart';
import 'package:Herald/services/service_response.dart';
import 'package:Herald/services/train_load_service.dart';
import 'package:built_redux/built_redux.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:device_info/device_info.dart';

Middleware<AppState, AppStateBuilder, AppActions> createMiddleware(
    TrainLoadService service, PersistenceService persistenceService) {
  return (MiddlewareBuilder<AppState, AppStateBuilder, AppActions>()
        ..add(AppActionsNames.searchAction, createOnSearchMiddleware<void>())
        ..add(AppActionsNames.refreshAction,
            createOnRefreshMiddleware<void>(service))
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
        ..add(AppActionsNames.found, createFoundMiddleware())
        ..add(AppActionsNames.save, createSaveMiddleware(persistenceService))
        ..add(AppActionsNames.clearCache,
            createClearCachedMiddleware(persistenceService))
            ..add(AppActionsNames.openFeedback, openFeedbackMiddleware))
      .build();
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, T>
    createOnSearchMiddleware<T>() {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<T> action) async {
    api.actions.navigate(Pages.trainsPage);
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
    final ServiceResponse response =
        await service.loadTrains(api.state.trainsScreenState.find);
    response.continued(
        (r) => {
              api.actions.save(SaveFindToPersistanceRequest(
                  find: api.state.trainsScreenState.find, trains: r.trains))
            },
        (r) {},
        (r) {});
    api.actions.serviceResponseAction(response);
  };
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, T>
    createInitAppMiddleware<T>(PersistenceService persistenceService) {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<T> action) async {
    next(action);
    await persistenceService.init();
  };
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, T>
    createCloseAppMiddleware<T>(PersistenceService persistenceService) {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<T> action) async {
    next(action);
    await persistenceService.close();
  };
}

MiddlewareHandler<AppState, AppStateBuilder, AppActions, void>
    createGetCachedMiddleware(PersistenceService persistenceService) {
  return (MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
      ActionHandler next, Action<void> action) async {
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
    api.actions.navigate(Pages.trainsPage);
    api.actions.findCached(action.payload);
  };
}

Future<void> openFeedbackMiddleware(MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
    ActionHandler next, Action<void> action) async {
  next(action);

  final deviceInfo = DeviceInfoPlugin();
  final androidInfo = await deviceInfo.androidInfo;

  const mail = 'fekz115@gmail.com';
  const subject = 'Herald feedback';
  const appVersion = '0.1.0-dev3';
  
  final body = 'App version: $appVersion\nDevice: ${androidInfo.model}\nOS Version: ${androidInfo.version.release}\n\n'; //TODO: Support other OS

  final url = Uri.encodeFull('mailto:$mail?subject=$subject&body=$body');

  await launch(url);
}