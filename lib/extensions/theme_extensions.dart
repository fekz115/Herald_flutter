import 'package:flutter/material.dart';

extension ThemeExtensions on ThemeData {

  Color gray() {
    return brightness == Brightness.light ? 
      Colors.black45 : 
      Colors.white54;
  }

  TextStyle tableItemTextStyle() {
    return TextStyle(
      color: gray(),
      fontStyle: FontStyle.italic,
    );
  }

  TextStyle trainIdTextStyle() {
    return TextStyle(
      fontSize: 20,
      color: gray(),
    );
  }

  TextStyle stationTextStyle() {
    return TextStyle(
      fontSize: 18,
      color: Colors.blueAccent[900],
    );
  }

  TextStyle stationArrowTextStyle() {
    return TextStyle(
      fontSize: 30,
      color: Colors.blueAccent[900],
    );
  }

  TextStyle timeTextStyle() {
    return TextStyle(
      fontSize: 20,
      color: gray(),
    );
  }

  TextStyle dateTextStyle() {
    return TextStyle(
      fontSize: 18,
      color: gray(),
    );
  }

  TextStyle timeArrowTextStyle() {
    return TextStyle(
      fontSize: 30,
      color: gray(),
    );
  }

  double iconMargin() {
    return 5;
  }

  double cardVerticalAlignment() {
    return 10;
  }

  double cardPadding() {
    return 8;
  }

}
