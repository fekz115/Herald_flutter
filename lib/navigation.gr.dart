// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'navigation.dart';
import 'pages/behavior_settings_page.dart';
import 'pages/cached_page.dart';
import 'pages/home_page.dart';
import 'pages/interface_settings_page.dart';
import 'pages/settings_page.dart';
import 'pages/trains_page.dart';

class Routes {
  static const String homePage = '/';
  static const String trainsPage = '/trains-page';
  static const String settingsPage = '/settings-page';
  static const String interfaceSettingsPage = '/interface-settings-page';
  static const String behaviorSettingsPage = '/behavior-settings-page';
  static const String cachedPage = '/cached-page';
  static const all = <String>{
    homePage,
    trainsPage,
    settingsPage,
    interfaceSettingsPage,
    behaviorSettingsPage,
    cachedPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.trainsPage, page: TrainsPage),
    RouteDef(Routes.settingsPage, page: SettingsPage),
    RouteDef(Routes.interfaceSettingsPage, page: InterfaceSettingsPage),
    RouteDef(Routes.behaviorSettingsPage, page: BehaviorSettingsPage),
    RouteDef(Routes.cachedPage, page: CachedPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
        settings: data,
        transitionsBuilder: zoomInTransition,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    TrainsPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => TrainsPage(),
        settings: data,
        transitionsBuilder: zoomInTransition,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    SettingsPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => SettingsPage(),
        settings: data,
        transitionsBuilder: zoomInTransition,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    InterfaceSettingsPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            InterfaceSettingsPage(),
        settings: data,
        transitionsBuilder: zoomInTransition,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    BehaviorSettingsPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            BehaviorSettingsPage(),
        settings: data,
        transitionsBuilder: zoomInTransition,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    CachedPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => CachedPage(),
        settings: data,
        transitionsBuilder: zoomInTransition,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
  };
}
