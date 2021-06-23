import 'package:flutter/material.dart';
import 'package:orderscreen/Home/home.dart';
import 'package:orderscreen/LoginScreen/login.dart';
import 'package:orderscreen/Payment/payment.dart';
import 'package:provider/provider.dart';
import 'LoginScreen/register.dart';
import 'Provider/paymentProvider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PaymentNotifier()),
      ],
      child: MyApp(),
    ),
   );
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
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/register': (context) => AccountRegister(),
        '/login': (context) => LoginScreen(),
        '/payment': (context) => PaymentScreen(),
      },
    );
  }
}
