import 'package:Herald_flutter/navigation.gr.dart';
import 'package:Herald_flutter/services/html_parser_service.dart';
import 'package:Herald_flutter/services/http_load_service.dart';
import 'package:Herald_flutter/services/train_load_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/find/find_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Color mainColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: mainColor,
        buttonTheme: ButtonThemeData(
          buttonColor: mainColor,
          colorScheme: ColorScheme.dark(),
        ),
      ),
      builder: (context, widget) => BlocProvider<FindBloc>(
        create: (context) =>
          FindBloc(TrainLoadService(
            HttpLoadService(),
            HtmlParserService(),
          )),
        child: Scaffold(
          body: ExtendedNavigator<Router>(router: Router(),),
        ),
      ),
    );
  }
}