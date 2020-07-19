// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:Herald_flutter/pages/home_page.dart';
import 'package:Herald_flutter/navigation.dart';
import 'package:Herald_flutter/pages/trains_page.dart';

class Routes {
  static const String homePage = '/';
  static const String trainsPage = '/trains-page';
  static const all = <String>{
    homePage,
    trainsPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.trainsPage, page: TrainsPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (RouteData data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
        settings: data,
        transitionsBuilder: zoomInTransition,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    TrainsPage: (RouteData data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => TrainsPage(),
        settings: data,
        transitionsBuilder: zoomInTransition,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
  };
}
