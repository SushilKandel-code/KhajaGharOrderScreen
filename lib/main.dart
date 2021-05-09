import 'package:flutter/material.dart';
import 'package:orderscreen/screen/orderScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Khajaghar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OrderScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
