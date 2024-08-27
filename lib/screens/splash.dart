import 'dart:async';

import 'package:clockwise/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
   void initState()
  {
    super.initState();
    Timer(const Duration(seconds: 3), () 
   {
      GoRouter.of(context).go('/register');
    });
    

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: peach,
        body:  Container(
            decoration :const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  lightpink,
                  peach,
                 
                ],
              )
            ),
            child: Center(
              child: Image.asset(
                "assets/images/clockwise_transparent.png",
                width: 200,
              ),
            ),
          ),
        ),
    );
   
  }
}

