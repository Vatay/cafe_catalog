import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

ThemeData buildThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: kBgColor,
    primaryColor: kAccentColor,
    fontFamily: 'SF Pro Text',
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
