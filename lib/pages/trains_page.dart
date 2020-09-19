import 'package:Herald_flutter/i18n.dart';
import 'package:Herald_flutter/pages/widgets/train.dart';
import 'package:Herald_flutter/redux/actions.dart';
import 'package:Herald_flutter/redux/app_state.dart';
import 'package:Herald_flutter/redux/pages/widgets/redux_list.dart';
import 'package:Herald_flutter/redux/state/trains_screen_state.dart';
import 'package:Herald_flutter/services/exceptions/parse_exception.dart';
import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

class TrainsPage
    extends StoreConnector<AppState, AppActions, TrainsScreenState> {
  @override
  Widget build(
      BuildContext context, TrainsScreenState state, AppActions actions) {
    return Scaffold(
      appBar: AppBar(
        title: Text(HeraldLocalizations.of(context).title),
      ),
      body: RefreshIndicator(
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
        onRefresh: () async {
          actions.refreshAction();
        },
      ),
    );
  }

  Widget _buildLoadingBody() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildTrainsList() {
    return ReduxList(
      builder: (c, a, i) => FadeTransition(
        opacity: a,
        child: SizeTransition(
          sizeFactor: a,
          child: TrainWidget(train: i),
        ),
      ),
      mapper: (AppState state) =>
          (state.trainsScreenState as TrainsLoadedScreenState).trains,
      insertDuration: Duration(milliseconds: 100),
      removeDuration: Duration(milliseconds: 100),
    );
  }

  Widget _buildErrorBody(ParseException e, BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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
    print(e.toString());
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(e.toString()),
    ));
    actions.goBack();
  }

  @override
  TrainsScreenState connect(AppState state) => state.trainsScreenState;
}
