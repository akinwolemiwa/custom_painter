import 'package:custom_painter/models/painter.dart';
import 'package:custom_painter/size_config.dart';
import 'package:flutter/material.dart';

class ClockWidget extends StatelessWidget {
  const ClockWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getPropScreenHeight(300),
      width: getPropScreenWidth(300),
      child: CustomPaint(
        painter: Painter(),
      ),
    );
  }
}
