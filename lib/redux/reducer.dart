import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/redux/actions.dart';
import 'package:Herald_flutter/redux/state/interface_settings_state.dart';
import 'package:Herald_flutter/redux/state/trains_screen_state.dart';
import 'package:Herald_flutter/services/service_response.dart';
import 'package:built_redux/built_redux.dart';
import 'package:built_collection/built_collection.dart';

import 'app_state.dart';

var reducerBuilder = ReducerBuilder<AppState, AppStateBuilder>()
  ..add(AppActionsNames.changeDepartStationAction, changeDepartStation)
  ..add(AppActionsNames.changeArriveStationAction, changeArriveStation)
  ..add(AppActionsNames.changeDateAction, changeDate)
  ..add(AppActionsNames.serviceResponseAction, onServiceResponse)
  ..add(AppActionsNames.enableDarkTheme, onEnableDarkTheme)
  ..add(AppActionsNames.disableDarkTheme, onDisableDarkTheme)
  ..add(AppActionsNames.refreshAction, onRefresh)
  ..add(AppActionsNames.changeCurrency, onCurrencyChange)
  ..add(AppActionsNames.changeCurrencyDisplayingMode,
      onCurrencyDisplayingModeChange)
  ..add(AppActionsNames.searchAction, onSearch)
  ..add(AppActionsNames.saved, onGetSaved)
  ..add(AppActionsNames.showCached, onNavigateSaved)
  ..add(AppActionsNames.clearCache, onClearCache)
  ..add(AppActionsNames.openCached, onOpenCached)
  ..add(AppActionsNames.found, onFound);

void changeDepartStation(
    AppState state, Action<String> action, AppStateBuilder builder) {
  builder.initialScreenState.departStationTextInputState.value = action.payload;
}

void changeArriveStation(
    AppState state, Action<String> action, AppStateBuilder builder) {
  builder.initialScreenState.arriveStationTextInputState.value = action.payload;
}

void changeDate(
    AppState state, Action<DateTime> action, AppStateBuilder builder) {
  builder.initialScreenState.date = action.payload;
}

void onServiceResponse(
    AppState state, Action<ServiceResponse> action, AppStateBuilder builder) {
  builder.trainsScreenState = action.payload.join(
    (TrainsLoadedResponse loadedResponse) => TrainsLoadedScreenState((b) => b
      ..trains = BuiltList<Train>.from(loadedResponse.trains).toBuilder()
      ..find = state.initialScreenState.find.toBuilder()),
    (ParseExceptionResponse e) =>
        TrainsParseExceptionScreenState((b) => b..exception = e.exception),
    (ExceptionRespose e) =>
        TrainsExceptionScreenState((b) => b..exception = e.exception),
  );
}

void onRefresh(AppState state, Action<void> action, AppStateBuilder builder) {
  builder.trainsScreenState = TrainsLoadingScreenState((b) {
    if (state.trainsScreenState.find != null) {
      b.find = state.trainsScreenState.find.toBuilder();
    }
    return b;
  });
}

void onSearch(AppState state, Action<void> action, AppStateBuilder builder) {
  builder.trainsScreenState = TrainsLoadingScreenState(
      (b) => b..find = state.initialScreenState.find.toBuilder());
}

void onEnableDarkTheme(
    AppState state, Action<void> action, AppStateBuilder builder) {
  builder.settingsState.interfaceSettingsState.update((b) {
    b
      ..useDarkTheme = true
      ..build();
  });
}

void onDisableDarkTheme(
    AppState state, Action<void> action, AppStateBuilder builder) {
  builder.settingsState.interfaceSettingsState.update((b) {
    b
      ..useDarkTheme = false
      ..build();
  });
}

void onCurrencyChange(
    AppState state, Action<Currency> action, AppStateBuilder builder) {
  builder.settingsState.interfaceSettingsState.update((b) {
    b
      ..selectedCurrency = action.payload
      ..build();
  });
}

void onCurrencyDisplayingModeChange(AppState state,
    Action<CurrencyDisplaying> action, AppStateBuilder builder) {
  builder.settingsState.interfaceSettingsState.update((b) {
    b
      ..currencyDisplaying = action.payload
      ..build();
  });
}

void onGetSaved(
    AppState state, Action<Iterable<Find>> action, AppStateBuilder builder) {
  builder.settingsState.behaviorSettingsState.cachedState.update((b) {
    b.cached = BuiltList.of(action.payload).toBuilder();
  });
}

void onNavigateSaved(
    AppState state, Action<void> action, AppStateBuilder builder) {
  builder.settingsState.behaviorSettingsState.cachedState.update((b) {
    b.cached = null;
  });
}

void onFound(
    AppState state, Action<Iterable<Train>> action, AppStateBuilder builder) {
  builder.update((b) {
    b
      .trainsScreenState = TrainsLoadedScreenState((b) => b
        ..find = state.trainsScreenState.find.toBuilder()
        ..trains = BuiltList.of(action.payload).toBuilder());
  });
}

void onClearCache(
    AppState state, Action<DateTime> action, AppStateBuilder builder) {
  builder.update((b) {
    b
      .settingsState.behaviorSettingsState.cachedState.update((b) {
        b.cached = null;
      });
  });
}

void onOpenCached(
    AppState state, Action<Find> action, AppStateBuilder builder) {
  builder.trainsScreenState =
      TrainsLoadingScreenState((b) => b..find = action.payload.toBuilder());
}
