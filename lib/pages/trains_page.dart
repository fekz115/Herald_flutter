import 'package:Herald/i18n.dart';
import 'package:Herald/model/train.dart';
import 'package:Herald/pages/widgets/train.dart';
import 'package:Herald/redux/actions.dart';
import 'package:Herald/redux/app_state.dart';
import 'package:Herald/redux/pages/widgets/redux_list.dart';
import 'package:Herald/redux/state/trains_screen_state.dart';
import 'package:Herald/services/exceptions/parse_exception.dart';
import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

class TrainsPage
    extends StoreConnector<AppState, AppActions, TrainsScreenState> {
  TrainsPage({Key key}) : super(key: key);

  @override
  Widget build(
      BuildContext context, TrainsScreenState state, AppActions actions) {
    return Scaffold(
      appBar: AppBar(
        title: Text(HeraldLocalizations.of(context).title),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          actions.refreshAction();
        },
        child: Scaffold(
          body: state.join(
            (TrainsLoadedScreenState state) => _buildTrainsList(),
            (TrainsParseExceptionScreenState state) =>
                _buildErrorBody(state.exception, context),
            (TrainsExceptionScreenState state) {
              _showError(context, state.exception, actions);
              return Container();
            },
            (TrainsLoadingScreenState state) => _buildLoadingBody(),
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingBody() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildTrainsList() {
    return ReduxList<AppState, AppStateBuilder, Train>(
      builder: (c, a, i) => FadeTransition(
        opacity: a,
        child: SizeTransition(
          sizeFactor: a,
          child: TrainWidget(train: i),
        ),
      ),
      mapper: (AppState state) =>
        // ignore: avoid_as
          (state.trainsScreenState as TrainsLoadedScreenState).trains,
      insertDuration: const Duration(milliseconds: 100),
      removeDuration: const Duration(milliseconds: 100),
    );
  }

  Widget _buildErrorBody(ParseException e, BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          e is UnknownParseException && e.content != null
              ? e.content
              : HeraldLocalizations.of(context).getValue(e.message),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  void _showError(BuildContext context, Exception e, AppActions actions) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(e.toString()),
    ));
    actions.goBack();
  }

  @override
  TrainsScreenState connect(AppState state) => state.trainsScreenState;
}
