import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gsos/views/onloading/onboardingscreen.dart';
import 'package:gsos/views/onloading/onloading1.dart';
import 'package:gsos/views/onloading/onloading2.dart';
import 'package:gsos/views/onloading/onloading3.dart';
import 'package:gsos/views/onloading/onloading4.dart';
import 'package:gsos/views/dashboardscreen.dart';
import 'package:gsos/views/loginscreen.dart';
import 'package:gsos/views/splashscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    super.initState();
    // Disable Rotation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    // Transparent status bar
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        // Dark icons for light background
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/splashscreen",
      // Set the Global Font Familiy And Color
      theme: ThemeData(
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/splashscreen": (context) => const Splashscreen(),
        "/onboardingscreen": (context) => const OnBoardingScreen(),
        "/onloading1screen": (context) => const Onloading1(),
        "/onloading2screen": (context) => const Onloading2(),
        "/onloading3screen": (context) => const Onloading3(),
        "/onloading4screen": (context) => const Onloading4(),
        "/loginscreen": (context) => const Loginscreen(),
        "/dashboardscreen": (context) => const Dashboardscreen(),
      },
    );
  }
}
