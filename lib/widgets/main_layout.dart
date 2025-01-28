import 'package:flutter/material.dart';
import '../modules/cart/screens/cart_page.dart';
import '../modules/medicine/screens/medicine_page.dart';
import '../modules/profile/screens/profile_page.dart';
import '../modules/schedule/screens/schedule_page.dart';
import './bottom_navigation.dart';
import '../modules/home/screens/home_page.dart';

class MainLayout extends StatefulWidget {

  const MainLayout(
      {super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;

  final List<Widget> _children = const [
    HomePage(),
    MedicinePage(),
    SchedulePage(),
    CartPage(),
    ProfilePage(key: ValueKey(1), userId: '12',),
  ];

  void _onTapTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:IndexedStack(index: _currentIndex, children: _children),
        bottomNavigationBar:
            BottomNavigation(currentIndex: _currentIndex, onTap: _onTapTapped),
      ),
    );
  }
}
