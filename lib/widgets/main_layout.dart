import 'package:flutter/material.dart';
import '../modules/cart/screens/cart_page.dart';
import '../modules/medicine/screens/medicine_page.dart';
import '../modules/profile/screens/profile_page.dart';
import '../modules/schedule/screens/schedule_page.dart';
import './bottom_navigation.dart';
import '../modules/home/screens/home_page.dart';

class MainLayout extends StatefulWidget{
  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;


  final List<Widget> _children = [
    HomePage(),
    MedicinePage(),
    SchedulePage(),
    CartPage(),
    // ProfilePage(key: null,),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          body: _children[_currentIndex],
          bottomNavigationBar: BottomNavigation(currentIndex: _currentIndex, onTap: _onTabTapped),
        ),
      );
  }
}