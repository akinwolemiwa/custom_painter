import 'dart:math';

import 'package:flutter/material.dart';

class Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width / 2;
    var centerY = size.height / 2;
    var center = Offset(centerX, centerY);
    var radius = min(centerX, centerY); //same as size.height/2 and size.width/2

    var fillBrush = Paint()..color = const Color(0xff444974);
    var outlineBrush = Paint()
      ..style = PaintingStyle.stroke
      ..color = const Color(0xffeaecff)
      ..strokeWidth = 16;

    var centerBrush = Paint()..color = const Color(0xffeaecff);
    var secHandBrush = Paint()
      ..color = const Color(0xffFFA500)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;

    var minHandBrush = Paint()
      ..color = const Color(0xff0000FF)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;

    var hourHandBrush = Paint()
      ..color = const Color(0xff8C00BF)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius - 30, fillBrush);
    canvas.drawCircle(center, radius - 30, outlineBrush);

    var hourHandX = centerX + 60 * cos(180 * pi / 130);
    var hourHandY = centerX + 60 * cos(180 * pi / 110);
    canvas.drawLine(center, Offset(hourHandX, hourHandY), hourHandBrush);

    var minHandX = centerX + 90 * cos(45 * pi / 125);
    var minHandY = centerX + 90 * cos(45 * pi / 125);
    canvas.drawLine(center, Offset(minHandX, minHandY), minHandBrush);

    var secHandX = centerX + 100 * cos(90 * pi / 125);
    var secHandY = centerX + 100 * cos(90 * pi / 125);
    canvas.drawLine(center, Offset(secHandX, secHandY), secHandBrush);

    canvas.drawCircle(center, 15, centerBrush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
