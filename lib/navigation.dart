import 'package:Herald_flutter/pages/home_page.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/material.dart';

@CustomAutoRouter(
    transitionsBuilder: zoomInTransition,
    durationInMilliseconds: 400
  )
class $Router {
  @initial
  HomePage homepage;
}

Widget zoomInTransition(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return ZoomPageTransitionsBuilder().buildTransitions(null, context, animation, secondaryAnimation, child);
}