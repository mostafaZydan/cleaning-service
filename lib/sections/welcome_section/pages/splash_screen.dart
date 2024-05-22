import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'first_onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _splashScreen createState() => _splashScreen();
}

class _splashScreen extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future(() =>
        Timer(const Duration(seconds: 2), () =>
        Navigator.push(context, MaterialPageRoute(builder: (context) =>
        const FirstOnboardingScreen(),))
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 0,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 72.0),
          child: Text("YourLogo Animation",
              textAlign: TextAlign.center,
              style: GoogleFonts.pottaOne(fontSize: 40)),
        ),
      ),
    );
  }

}