import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:orderscreen/Cart/cart.dart';
import 'package:orderscreen/Notification/notification.dart';
import 'package:orderscreen/Profile/profile.dart';
import 'package:orderscreen/Search/search.dart';
import 'package:orderscreen/Home/homeContent.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _indexNavigation = 0;
  Text title;

  final List _bottomNavWidget = [
    HomeContentScreen(),
    SearchScreen(),
    CartScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  final List _buttonNavigationBarItem = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home_outlined,
        size: 30.0,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.search_outlined,
        size: 30.0,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: FaIcon(
        FontAwesomeIcons.cartArrowDown,
        size: 20.0,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.notifications_none,
        size: 30.0,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: FaIcon(
        FontAwesomeIcons.user,
        size: 20.0,
      ),
      label: '',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _bottomNavWidget.elementAt(_indexNavigation),
        bottomNavigationBar: bottomNavBarDesign(),
      ),
    );
  }

  Widget bottomNavBarDesign() {
    return BottomNavigationBar(
      items: _buttonNavigationBarItem,
      currentIndex: _indexNavigation,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.red,
      onTap: (int index) {
        setState(() {
          _indexNavigation = index;
        });
      },
    );
  }
}
