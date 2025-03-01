import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/config/routers/router_handle.dart';
import '../pages/cart/screens/cart_page.dart';
import '../pages/home/screens/home_page.dart';
import '../pages/medicine/screens/medicine_page.dart';
import '../pages/profile/screens/profile_page.dart';
import '../pages/schedule/screens/schedule_page.dart';
import 'bottom_navigation.dart';


class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

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
    ProfilePage(
      key: ValueKey(1),
      userId: '12',
    ),
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
        appBar: AppBar(
          title: const Text('Clinic E-commerce'),
        ),
        drawer: Drawer(
          width: MediaQuery.of(context).size.width * 0.8,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.teal[300]!,
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 70,
                        height: 70,
                        padding: EdgeInsets.zero,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset(
                            'assets/icons/icons8-account-100-violet.png'),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'User Name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ListTile(
                    title: Text('Trang chủ'),
                    onTap: () {
                      RouterHandle.navigateToHome(context);
                    },
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    title: const Text('Liên hệ'),
                    onTap: () {
                      // Navigator.pop(context);
                    },
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    title: const Text('Giới thiệu'),
                    onTap: () {
                      // Navigator.pop(context);
                    },
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    title: const Text('Điều khoản'),
                    onTap: () {
                      // Navigator.pop(context);
                    },
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    title: const Text('Chính sách bảo mật'),
                    onTap: () {
                      // Navigator.pop(context);
                    },
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    title: const Text('Quy trình hỗ trợ giải quyết khiếu nại'),
                    onTap: () {
                      // Navigator.pop(context);
                    },
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    title: const Text('Đăng xuất'),
                    onTap: () {
                      // Navigator.pop(context);
                    },
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  Image.asset('assets/images/chung-nhan.png', width: 200, height: 200,),
                ],
              ),
            ],
          ),
        ),
        body: IndexedStack(index: _currentIndex, children: _children),
        bottomNavigationBar:
            BottomNavigation(currentIndex: _currentIndex, onTap: _onTapTapped),
      ),
    );
  }
}
