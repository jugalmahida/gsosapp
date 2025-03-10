import 'package:flutter/material.dart';
import 'package:gsos/views/widgets/sizedbox.dart';
import 'package:gsos/views/widgets/text.dart';

class Onloading1 extends StatefulWidget {
  const Onloading1({super.key});

  @override
  State<Onloading1> createState() => _Onloading1State();
}

class _Onloading1State extends State<Onloading1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            getBoldText(text: "Is Digital World Scary?"),
            get10height(),
            Image.asset("assets/images/img_4.png"),
            get10height(),
            Center(
              child: getGreyText(
                  text:
                      "This digital world is what you make of it in the end."),
            ),
          ],
        ),
      ),
    );
  }
}
