import 'package:flutter/material.dart';

class TagImageWidgets extends StatelessWidget {
  final List<String> tagsList;

  TagImageWidgets({Key key, this.tagsList})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    color: Colors.grey[400],
    child: Row(
      children: [

      ],
    ),
  );

  Widget tagItem(String text, bool first) => Container(
    width: 70,
    height: 40,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: first ? Colors.grey[400] : Colors.grey,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        bottomRight: Radius.circular(25),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey[400],
          blurRadius: 1,
          spreadRadius: 0.1,
        )
      ],
    ),
    child: Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 13,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
