// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:Herald_flutter/pages/home_page.dart';
import 'package:Herald_flutter/navigation.dart';

abstract class Routes {
  static const homepage = '/';
  static const all = {
    homepage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homepage:
        return PageRouteBuilder<dynamic>(
          pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
          settings: settings,
          transitionsBuilder: zoomInTransition,
          transitionDuration: const Duration(milliseconds: 400),
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
