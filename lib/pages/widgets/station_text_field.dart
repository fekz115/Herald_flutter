import 'package:Herald_flutter/redux/app_state.dart';
import 'package:Herald_flutter/redux/pages/widgets/redux_text_field.dart';
import 'package:Herald_flutter/redux/state/station_text_input_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StationTextField extends StatelessWidget {
  final StationTextInputState Function(AppState) connector;
  final String label;
  final Function(String) onTextChanged;

  StationTextField({
    @required this.connector,
    @required this.label,
    @required this.onTextChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ReduxTextField(
      listener: onTextChanged,
      mapper: (state) => connector(state).value,
      builder: (controller, context) => TextField(
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
        controller: controller,
      ),
    );
  }
}
