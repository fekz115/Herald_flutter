import 'package:Herald_flutter/pages/home_page.dart';
import 'package:Herald_flutter/pages/interface_settings_page.dart';
import 'package:Herald_flutter/pages/settings_page.dart';
import 'package:Herald_flutter/pages/trains_page.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/material.dart';

@CustomAutoRouter(
  routes: [
    CustomRoute(
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: 400,
      page: HomePage,
      initial: true,
    ),
    CustomRoute(
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: 400,
      page: TrainsPage,
    ),
    CustomRoute(
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: 400,
      page: SettingsPage,
    ),
    CustomRoute(
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: 400,
      page: InterfaceSettingsPage,
    ),
  ],
)
class $Router {}

Widget zoomInTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return ZoomPageTransitionsBuilder()
      .buildTransitions(null, context, animation, secondaryAnimation, child);
}
