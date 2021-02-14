import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer timer;

  @override
  void initState() {
    super.initState();
    timerFunction();
  }

  void timerFunction() {
    Timer(
      const Duration(seconds: 5),
      () => Get.toNamed('/home', arguments: false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Image.asset(
          'assets/images/JK-wallpaper.jpg',
        ),
      ),
    );
  }
}
