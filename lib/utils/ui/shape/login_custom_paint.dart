import 'package:flutter/material.dart';

class LoginCustomPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 15
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, size.height * 0.5);

    path.quadraticBezierTo(
        size.width * 0.25, size.height * 0.75, size.width * 0.5, size.height * 0.5);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.25, size.width, size.height*0.75);

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint( CustomPainter oldDelegate) {
    return true;
  }
}