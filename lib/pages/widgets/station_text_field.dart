import 'package:Herald_flutter/redux/actions.dart';
import 'package:Herald_flutter/redux/app_state.dart';
import 'package:Herald_flutter/redux/state/station_text_input_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

class StationTextField
    extends StoreConnector<AppState, AppActions, StationTextInputState> {
  final StationTextInputState Function(AppState) connector;
  final String label;
  final Function(String) onTextChanged;

  StationTextField(this.connector, this.label, this.onTextChanged);

  //final TextEditingController _controller = TextEditingController();

  @override
  Widget build(
      BuildContext context, StationTextInputState state, AppActions actions) {
    //_controller.text = state.value;
    return TextField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: label,
      ),
      //controller: _controller,
      onChanged: onTextChanged,
    );
  }

  @override
  StationTextInputState connect(AppState state) => connector(state);
}
