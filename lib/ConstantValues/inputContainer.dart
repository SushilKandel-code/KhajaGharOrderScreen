import 'package:flutter/material.dart';

import 'colors.dart';

class InputContainer extends StatelessWidget {
  final String hintText, labelText;
  final bool obsecureText;
  final Container prefixIcon;
  final GestureDetector suffix;
  final TextInputType textInputType;
  final Function onValidate;

  final TextEditingController controller;

  InputContainer(
      {@required this.prefixIcon,
      @required this.hintText,
      @required this.labelText,
      @required this.onValidate,
      @required this.controller,
      this.suffix,
      this.textInputType = TextInputType.text,
      this.obsecureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 0,
              blurRadius: 1,
              offset: Offset(1, 0))
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        enableSuggestions: false,
        obscureText: obsecureText,
        validator: onValidate,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(15.0),
          hintStyle: hintTextStyle,
          hintText: hintText,
          border: InputBorder.none,
          prefixIcon: prefixIcon,
          labelText: labelText,
          suffix: suffix,
        ),
      ),
    );
  }
}
