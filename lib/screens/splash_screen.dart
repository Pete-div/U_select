import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(milliseconds: 900),
        () => Navigator.of(context).pushReplacementNamed('/dashboard_screen'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Loading......',
          style: TextStyle(color: Colors.red,fontSize: 30),
        ),
      ),
    );
  }
}
