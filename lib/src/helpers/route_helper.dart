import 'package:flutter/material.dart';
import 'package:mvc_structure_gogoapp/src/models/route_argument.dart';
import 'package:mvc_structure_gogoapp/src/pages/home_page.dart';
import 'package:mvc_structure_gogoapp/src/pages/splash.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  final args = settings.arguments as RouteArgument;
  switch (settings.name) {
    case '/Home':
      return MaterialPageRoute(
        builder: (_) => HomePage(
          argument: args,
          parentScaffoldKey: GlobalKey<ScaffoldState>(),
        ),
      );
    case '/':
      return MaterialPageRoute(
        builder: (_) => SplashPage(),
      );
    default:
      return null;
  }
}

navigateToHomePage(context) => Navigator.of(context).pushNamed('/Home');


