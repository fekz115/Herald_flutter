import 'package:Herald_flutter/blocs/find/find_bloc.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/navigation.gr.dart';
import 'package:Herald_flutter/pages/widgets/train.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrainsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FindBloc, FindState>(
      listener: (BuildContext context, FindState state) {
        if (state is ErrorLoadingState) {
          _showError(context, state.exception);
        }
      },
      builder: (context, state) {
        var body;
        if (state is SearchState) {
          body = _buildLoadingBody();
        } else if (state is LoadedState) {
          body = _buildTrainsList(state.trainList);
        } else if (state is ErrorParsingState) {
          body = Center(
            child: Text(
              state.exception.message,
            ),
          );
        } else {
          body = Container();
        }
        return Scaffold(
          appBar: AppBar(
            title: Text('Herald'),
          ),
          body: body,
        );
      },
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

  void _showError(BuildContext context, Error e) {
    print(e.toString());
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(e.toString()),
    ));
    ExtendedNavigator.ofRouter<Router>().pop();
  }
}
