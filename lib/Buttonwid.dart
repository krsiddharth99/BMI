import 'package:flutter/material.dart';

class ButtonWid extends StatelessWidget {
  ButtonWid({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.white,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      constraints: BoxConstraints(
        minHeight: 40.0,
        minWidth: 40.0,
      ),
      child: Center(
        child: Icon(
          icon,
          size: 20,
          color: Colors.deepPurple,
        ),
      ),
      onPressed: onPressed,
    );
  }
}