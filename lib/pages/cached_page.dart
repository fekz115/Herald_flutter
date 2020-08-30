import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/pages/widgets/find.dart';
import 'package:Herald_flutter/redux/actions.dart';
import 'package:Herald_flutter/redux/app_state.dart';
import 'package:Herald_flutter/redux/state/cached_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

class CachedPage extends StoreConnector<AppState, AppActions, CachedState> {
  @override
  Widget build(BuildContext context, CachedState state, AppActions actions) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Сохраненные'),
        actions: [
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              actions.clearCache(null);
            },
          )
        ],
      ),
      body: state.cached == null || state.cached.isEmpty
          ? _buildLoadingBody(actions)
          : _buildLoadedBody(state.cached),
    );
  }

  Widget _buildLoadingBody(AppActions actions) {
    actions.getCached();
    return Center(
      child: Text('Сохраненная информация отсутствует'),
    );
  }

  Widget _buildLoadedBody(Iterable<Find> finds) {
    return ListView(
      children: finds.map((x) => FindWidget(x)).toList(),
    );
  }

  @override
  CachedState connect(AppState state) =>
      state.settingsState.behaviorSettingsState.cachedState;
}
