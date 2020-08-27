import 'package:Herald_flutter/i18n.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/pages/widgets/train.dart';
import 'package:Herald_flutter/redux/actions.dart';
import 'package:Herald_flutter/redux/app_state.dart';
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
            (TrainsLoadedScreenState state) => _buildTrainsList(state.trains),
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

  Widget _buildTrainsList(Iterable<Train> trains) {
    var iterator = trains.iterator;
    return ListView.builder(
      itemCount: trains.length,
      itemBuilder: (context, index) {
        iterator.moveNext();
        return TrainWidget(train: iterator.current);
      },
    );
  }

  Widget _buildErrorBody(ParseException e, BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          e is UnknownParseException && e.content != null ? e.content : HeraldLocalizations.of(context).getValue(e.message),
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
