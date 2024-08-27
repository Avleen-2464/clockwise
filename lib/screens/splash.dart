import 'package:clockwise/util/theme.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: peach,
      body: Center(
        child: Container(
          child: Image.asset(
            "assets/images/clockwise_transparent.png",
            width: 200,
          ),
        ),
      ),
    );
  }
}

