import 'package:flutter/material.dart';

import 'orderScreenContents.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: Text('Order'),
          backgroundColor: Colors.red,
          centerTitle: true,
          elevation: 20,
        ),
        body: ListView(
          children: [
            OrderScreenContents(
              invoice: "12:04 PM",
              invoice1: "21st Dec",
              name: "Rista Gurung",
              address: "Rambazar, Pokhara",
              contact: "9838643649",
              price: "Paid (via esewa)",
            ),

            
          ],
        ));
  }
}
