import 'package:flutter/material.dart';
import '../helpers/app_colors_helper.dart' as _colors;

TextTheme _textTheme([Brightness brightness = Brightness.light]) => TextTheme(
  headline5: TextStyle(
    fontSize: 22.0,
    color: _colors.secondColor(1),
    height: 1.3,
  ),
  headline4: TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
    color: _colors.mainColor(1),
    height: 1.3,
  ),
  headline3: TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.w700,
    color: _colors.accentColor(1),
    height: 1.3,
  ),
  headline2: TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
    color:brightness == Brightness.light ? _colors.primaryColor(1) : Colors.white,
    height: 1.4,
  ),
  headline1: TextStyle(
    fontSize: 26.0,
    fontWeight: FontWeight.w300,
    color: _colors.mainColor(1),
    height: 1.4,
  ),
  subtitle1: TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    color: _colors.secondColor(1),
    height: 1.3,
  ),
  headline6: TextStyle(
    fontSize: 17.0,
    fontWeight: FontWeight.w700,
    color: _colors.accentColor(1),
    height: 1.3,
  ),
  bodyText2: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: _colors.secondColor(1),
    height: 1.2,
  ),
  bodyText1: TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w600,
    color: brightness == Brightness.light ? _colors.secondColor(1) : Colors.blueGrey,
    height: 1.3,
  ),
  caption: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w300,
    color: _colors.accentColor(1),
    height: 1.2,
  ),
);

ThemeData themeData([Brightness brightness = Brightness.light]) => ThemeData(
  accentColor: brightness == Brightness.light ? _colors.accentColor(1) : _colors.accentColorDark(1),
  scaffoldBackgroundColor: brightness == Brightness.light ? _colors.mainColor(1) : _colors.mainColorDark(1),
  primaryColor: _colors.primaryColor(1),
  backgroundColor: _colors.mainColor(1),
  secondaryHeaderColor: _colors.secondColor(1),
  textTheme: _textTheme(brightness),
  brightness: brightness,
);