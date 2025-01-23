import  'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigation ({
    Key? key,
    required this.currentIndex,
    required this.onTap,
}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        index: currentIndex,
        onTap: onTap,
        backgroundColor: Colors.deepPurpleAccent,
        color: Colors.grey[200]!,
        buttonBackgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        items: [
          Image.asset('assets/icons/icons8-home-100.png',width: 30,height: 30,),
          Image.asset('assets/icons/icons8-medicine-100.png',width: 30,height: 30,),
          Image.asset('assets/icons/icons8-schedule-100.png',width: 30,height: 30,),
          Image.asset('assets/icons/icons8-cart-100.png',width: 30,height: 30,),
          Image.asset('assets/icons/icons8-account-100.png',width: 30,height: 30,),
        ],
      );
  }
}