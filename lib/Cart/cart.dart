import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:orderscreen/ConstantValues/buttons.dart';
import 'package:orderscreen/ConstantValues/colors.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _emptyCartComponent(),
      ),
    );
  }

  Widget _emptyCartComponent() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 100.0,
        left: 25.0,
        right: 25.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              'image/emptyCart.svg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 40.0,
            ),
            child: Text(
              'Your Cart is Empty',
              style: emptyCartTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
            ),
            child: Text(
              "Looks like you haven't made your choice yet.",
              style: subEmptyCartTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              'Lets start exploring',
              style: subEmptyCartTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 60.0,
            ),
            child: ButtonClass(
              title: 'Start Shopping',
              onPressed: () => null,
            ),
          ),
        ],
      ),
    );
  }
}
