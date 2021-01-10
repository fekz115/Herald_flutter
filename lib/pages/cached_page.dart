import 'package:Herald/model/find.dart';
import 'package:Herald/pages/widgets/find.dart';
import 'package:Herald/redux/actions.dart';
import 'package:Herald/redux/app_state.dart';
import 'package:Herald/redux/state/cached_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

class CachedPage extends StoreConnector<AppState, AppActions, CachedState> {
  CachedPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, CachedState state, AppActions actions) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Сохраненные'),
        actions: [
          IconButton(
            icon: const Icon(Icons.clear),
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
    return const Center(
      child: Text('Сохраненная информация отсутствует'),
    );
  }

  Widget _buildLoadedBody(Iterable<Find> finds) {
    return ListView(
      children: finds.map((x) => FindWidget(find: x)).toList(),
    );
  }

  @override
  CachedState connect(AppState state) =>
      state.settingsState.behaviorSettingsState.cachedState;
}
