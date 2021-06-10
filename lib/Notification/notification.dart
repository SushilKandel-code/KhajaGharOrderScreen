import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:orderscreen/ConstantValues/buttons.dart';
import 'package:orderscreen/ConstantValues/colors.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _emptyNotificationComponent(),
      ),
    );
  }

  Widget _emptyNotificationComponent() {
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
              'image/notification.svg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 40.0,
            ),
            child: Text(
              'No New Notifications',
              style: emptyCartTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
            ),
            child: Text(
              "Its quite down here.",
              style: subEmptyCartTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 60.0,
            ),
            child: ButtonClass(
              title: 'Back',
              onPressed: () => null,
            ),
          ),
        ],
      ),
    );
  }
}
