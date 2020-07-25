import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/navigation.gr.dart';
import 'package:Herald_flutter/pages/widgets/train.dart';
import 'package:Herald_flutter/redux/actions.dart';
import 'package:Herald_flutter/redux/app_state.dart';
import 'package:Herald_flutter/redux/state/trains_screen_state.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

class TrainsPage
    extends StoreConnector<AppState, AppActions, TrainsScreenState> {
  @override
  Widget build(
      BuildContext context, TrainsScreenState state, AppActions actions) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Herald'),
      ),
      body: RefreshIndicator(
        child: Scaffold(
          body: state.join(
            (TrainsLoadedScreenState state) => _buildTrainsList(state.trains),
            (TrainsParseExceptionScreenState state) => _buildErrorBody(state.exception),
            (TrainsExceptionScreenState state) {
              _showError(context, state.exception);
              return _buildErrorBody(state.exception);
            },
            (TrainsLoadingScreenState state) => _buildLoadingBody(),
          ),
        ),
        onRefresh: () async { actions.searchAction(); },
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

  Widget _buildErrorBody(Exception e) {
    return Center(
      child: Text(
        e.toString(),
      ),
    );
  }

  void _showError(BuildContext context, Exception e) {
    print(e.toString());
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(e.toString()),
    ));
    ExtendedNavigator.ofRouter<Router>().pop();
  }

  @override
  TrainsScreenState connect(AppState state) => state.trainsScreenState;
}
