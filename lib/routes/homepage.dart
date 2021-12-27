import 'package:custom_painter/size_config.dart';
import 'package:custom_painter/widgets/clock_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    // ignore: unnecessary_statements
    SizeConfig.mediaQueryData;
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          color: const Color(0xff2d2f41),
          child: const ClockWidget(),
        ),
      ),
    );
  }
}
