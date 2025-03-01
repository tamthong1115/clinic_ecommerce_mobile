import  'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigation ({
    super.key,
    required this.currentIndex,
    required this.onTap,
});


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
          _AnimatedIcon(icon: 'assets/icons/icons8-home-100.png', isSelected: currentIndex == 0),
          _AnimatedIcon(icon: 'assets/icons/icons8-medicine-100.png', isSelected: currentIndex == 1),
          _AnimatedIcon(icon: 'assets/icons/icons8-schedule-100.png', isSelected: currentIndex == 2),
          _AnimatedIcon(icon: 'assets/icons/icons8-cart-100.png', isSelected: currentIndex == 3),
          _AnimatedIcon(icon: 'assets/icons/icons8-account-100.png', isSelected: currentIndex == 4),
        ],
      );
  }
}

class _AnimatedIcon extends StatelessWidget {
  final String icon;
  final bool isSelected;

  const _AnimatedIcon({
    super.key,
    required this.icon,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(icon, width: 30, height: 30,),
    );
  }
}