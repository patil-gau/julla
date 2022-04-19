import 'package:flutter/material.dart';
import 'package:julla/ui/Home.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(
          seconds: 10,
          navigateAfterSeconds: const HomePage(),
          title: const Text(
            'Julla',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.white),
          ),
          backgroundColor: Colors.red,
          styleTextUnderTheLoader: const TextStyle(),
          photoSize: 100.0,
          onClick: () => print("Flutter Egypt"),
          loaderColor: Colors.white),
    );
  }
}
