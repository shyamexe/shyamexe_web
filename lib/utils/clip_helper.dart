import 'package:flutter/material.dart';

class ClipBottomHalf extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    // (0,0)1//1.point
    path.lineTo(0, h/2); //2.point
    path.lineTo(w, h/2); //4.point
    path.lineTo(w, 0); //5.point

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}