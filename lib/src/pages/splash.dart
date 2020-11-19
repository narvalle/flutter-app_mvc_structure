import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:mvc_structure_gogoapp/src/helpers/route_helper.dart';

import '../helpers/img_assets.dart' show logoImageAssets;

class SplashPage extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey = GlobalKey<ScaffoldState>();

  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends StateMVC<SplashPage> {
  double circle = 0;
  List<double> circles = [0, 0, 0];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    effect();
  }

  effect() async {
    await Future.delayed(Duration(milliseconds: 500));
    int i = 1;
    while (i <= 7) {
      if (circle == 0) {
        circle = 10;
        circles[0] = circle;
        setState(() {});
        await Future.delayed(Duration(milliseconds: 200));
      } else if (circle == 10) {
        circle = 20;
        circles[1] = circle;
        setState(() {});
        await Future.delayed(Duration(milliseconds: 200));
      } else if (circle == 20) {
        print(i);
        circle = 30;
        circles[2] = circle;
        if (i == 7) {
          circles[2] = 31;
          setState(() {});
          await Future.delayed(Duration(milliseconds: 50));
          circles[2] = 800;
          setState(() {});
          await Future.delayed(Duration(milliseconds: 200));
          print('end Splash');
          navigateToHomePage(context);
        }
        setState(() {});
        await Future.delayed(Duration(milliseconds: 400));
      } else {
        circle = 0;
        circles[0] = circle;
        circles[1] = circle;
        circles[2] = circle;
        setState(() {});
        await Future.delayed(Duration(milliseconds: 400));
      }
      i++;
    }
    circle = 0;
    circles[0] = circle;
    circles[1] = circle;
    circles[2] = circle;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        key: widget.parentScaffoldKey,
        backgroundColor: Theme.of(context).accentColor,
        body: SafeArea(
          child: Center(
            child: AnimatedContainer(
              duration: Duration(
                  milliseconds: circles[2] > 300
                      ? 1200
                      : circles[2] == 31
                          ? 0
                          : 300),
              padding: EdgeInsets.all(circles[2]),
              decoration: BoxDecoration(
                  color: circles[2] > 30
                      ? Theme.of(context).accentColor
                      : Color(0xFF518AE6),
                  borderRadius: BorderRadius.circular(150),
                  boxShadow: [
                    BoxShadow(
                      color: circles[2] == 30
                          ? Color(0xFF030BA6).withOpacity(0.38)
                          : Colors.transparent,
                      offset: Offset(0, 0),
                      blurRadius: circles[2] == 30 ? 50 : 0,
                    ),
                  ]),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                padding: EdgeInsets.all(circles[1]),
                decoration: BoxDecoration(
                  color: Color(0xFF98b8eb),
                  borderRadius: BorderRadius.circular(140),
                ),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  padding: EdgeInsets.all(circles[0]),
                  decoration: BoxDecoration(
                    color:
                        circles[0] == 0 ? Color(0xFF2794ee) : Color(0xFFe8e9eb),
                    borderRadius: BorderRadius.circular(120),
                  ),
                  child: InkWell(
                    onTap: () {
                      navigateToHomePage(context);
                    },
                    child: logoImageAssets(
                      width: 180,
                      height: 180,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
