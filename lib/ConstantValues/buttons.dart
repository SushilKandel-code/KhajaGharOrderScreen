import 'package:flutter/material.dart';
import 'package:orderscreen/ConstantValues/colors.dart';

class ButtonClass extends StatelessWidget {
  final String title;
  final Function onPressed;
  ButtonClass({@required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          title,
          style: buttonStyle,
        ),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          shadowColor: buttonColor,
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }
}
