import 'package:flutter/material.dart';

class OrderSecondScreen extends StatefulWidget {
  @override
  _OrderSecondScreenState createState() => _OrderSecondScreenState();
}

class _OrderSecondScreenState extends State<OrderSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 75.0, top: 5.0, right: 75.0),
      child: Container(
        height: 245.0,
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
      ),
    );
  }
}
