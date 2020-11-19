import 'package:flutter/material.dart';

class ItemCardRecommended extends StatelessWidget{
 final bool isSelected;

 ItemCardRecommended({Key key, this.isSelected,}):super(key:key);

  @override
  Widget build(BuildContext context) => AnimatedContainer(
    padding: EdgeInsets.all(10),
    duration: Duration(milliseconds: 1000),
    curve: Curves.ease,
    height: isSelected ? 545 : 425,
    width: 300,
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.7),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius:isSelected ? 25 : 4,
          offset:isSelected ? Offset(-4, 15) : Offset(0, 0),
          // spreadRadius: 1,
        ),
      ],
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(
          'Otros tambien pidieron esto',
          style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'COCOA & NEBLINA',
              style: TextStyle(
                // color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '\$ 4.25',
              style: TextStyle(
                // color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Sopa de res',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
                // fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ' 20 MIN',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'COCOA & NEBLINA',
              style: TextStyle(
                // color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '\$ 4.25',
              style: TextStyle(
                // color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Sopa de res',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
                // fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ' 20 MIN',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}