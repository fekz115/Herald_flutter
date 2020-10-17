import 'package:Herald_flutter/redux/app_state.dart';
import 'package:Herald_flutter/redux/pages/widgets/redux_text_field.dart';
import 'package:Herald_flutter/redux/state/station_text_input_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StationTextField extends StatelessWidget {
  const StationTextField({
    Key key,
    @required this.connector,
    @required this.label,
    @required this.onTextChanged,
  }) : super(key: key);

  final StationTextInputState Function(AppState) connector;
  final String label;
  final ValueChanged<String> onTextChanged;

  @override
  Widget build(BuildContext context) {
    return ReduxTextField<AppState, AppStateBuilder>(
      listener: onTextChanged,
      mapper: (state) => connector(state).value,
      builder: (controller, context) => TextField(
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: label,
        ),
        controller: controller,
      ),
    );
  }
}
