import 'dart:async';
import 'package:flutter/material.dart';
import 'package:resume_flutter_app/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? Key}) : super(key: Key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (BuildContext context) => const HomeScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image(
                    image: AssetImage('images/splash_screen.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
