import 'package:flutter/material.dart';

class ReuseContainer extends StatelessWidget {
  ReuseContainer({@required this.color, @required this.cardWid});

  final Widget cardWid;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(13.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(39),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.indigo[200],
            spreadRadius: 2.0,
            blurRadius: 2.0,
            offset: Offset(4.0, 4.0),
          ),
        ],
      ),
      child: cardWid,
    );
  }
}
