import 'package:flutter/material.dart';
import 'package:gsos/views/widgets/sizedbox.dart';
import 'package:gsos/views/widgets/text.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, '/onboardingscreen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/applogo.jpeg"),
          get10height(),
          getBoldText(text: "Welcome to G-SOS")
        ],
      ),
    );
  }
}
