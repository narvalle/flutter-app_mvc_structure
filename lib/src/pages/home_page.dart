import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:mvc_structure_gogoapp/src/repository/setting_repository.dart'
    as _settings;
import '../controllers/home_controller.dart';
import '../models/route_argument.dart';
import 'package:mvc_structure_gogoapp/generated/l10n.dart';

class HomePage extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;
  final RouteArgument argument;

  HomePage({Key key, this.parentScaffoldKey, this.argument}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends StateMVC<HomePage> {
  HomeController _controller;

  _HomePageState() : super(HomeController()) {
    _controller = controller;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        key: widget.parentScaffoldKey,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  S.of(context).hello,
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).accentColor,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).scaffoldBackgroundColor,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF202020).withOpacity(0.2),
                        offset: Offset(0,4),
                        blurRadius: 30,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.ad_units_outlined,
                        size: 80,
                        color: Theme.of(context).accentColor,
                      ),
                      SizedBox(height: 60),
                      Text(
                        S.of(context).show_List,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );

}
