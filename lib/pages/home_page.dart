import 'package:Herald_flutter/blocs/find/find_bloc.dart';
import 'package:Herald_flutter/extensions.dart';
import 'package:Herald_flutter/navigation.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FindBloc, FindState>(
        listener: (context, state) => {
          if(state is SearchState) {
            ExtendedNavigator.ofRouter<Router>().pushNamed(Routes.trainsPage),
          }
        },
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: Text('Herald'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Depart Station',
                  ),
                  onChanged: (value) => BlocProvider.of<FindBloc>(context).add(SetDepartStation(value)),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Arrive Station',
                  ),
                  onChanged: (value) => BlocProvider.of<FindBloc>(context).add(SetArriveStation(value)),
                ),
                SizedBox(height: 30),
                RaisedButton(
                  child: Text(state.find.date.toStringOnlyDate()),
                  onPressed: () => {
                    showDatePicker(
                        context: context,
                        initialDate: state.find.date,
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(Duration(days: 7))
                      ).then((value) => {
                          if(value != null)
                            BlocProvider.of<FindBloc>(context).add(SetDate(value))
                        }
                      )
                  },
                ),
                SizedBox(height: 10),
                RaisedButton(
                  child: Text('Find'),
                  onPressed: () => BlocProvider.of<FindBloc>(context).add(SearchEvent()),
                ),
              ],
            ),
          ),
        ),
    );
  }
}