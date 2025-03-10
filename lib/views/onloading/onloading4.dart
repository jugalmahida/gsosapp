import 'package:flutter/material.dart';
import 'package:gsos/constants/colors.dart';
import 'package:gsos/views/widgets/Button.dart';
import 'package:gsos/views/widgets/sizedbox.dart';

class Onloading4 extends StatefulWidget {
  const Onloading4({super.key});

  @override
  State<Onloading4> createState() => _Onloading4State();
}

class _Onloading4State extends State<Onloading4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset("assets/images/logo_2.png"),
            get10height(),
            Text(
              "Welcome to G-SOS",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            get10height(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Powered By"),
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  "assets/images/img.png",
                  scale: 6,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Know Your Skills",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "by challenging yourself",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: FontColors.titleColor),
            ),
            SizedBox(
              height: 50,
            ),
            getMainButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/loginscreen'),
                name: "Let's Get Started"),
          ],
        ),
      ),
    );
  }
}
