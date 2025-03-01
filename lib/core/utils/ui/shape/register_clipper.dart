import 'package:flutter/material.dart';

class RegisterClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double w = size.width;
    double h = size.height;
    path.moveTo(w*0.1, size.height * 0.5);

    path.moveTo(0, h* 0.5);

    path.quadraticBezierTo( 0 , h * 0.25 , w * 0.85 , 0);
    path.quadraticBezierTo(w*0.99 , 0 , w, h / 2);
    path.quadraticBezierTo(w, h * 0.75, w * 0.5, h*0.9);
    path.quadraticBezierTo(w*0.1, h , 0, h*0.7);

    path.lineTo(0, size.height);

    path.close();

    // path.moveTo(size.width * 0.3, size.height * 0.2);  // Điểm bắt đầu vết nứt
    // path.quadraticBezierTo(size.width * 0.4, size.height * 0.5, size.width * 0.7, size.height * 0.7); // Vẽ vết nứt

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}