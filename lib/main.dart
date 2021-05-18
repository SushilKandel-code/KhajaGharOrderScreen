import 'package:flutter/material.dart';
import 'package:orderscreen/LoginScreen/login.dart';

import 'LoginScreen/register.dart';

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
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/register': (context) => AccountRegister(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}
