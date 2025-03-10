import 'package:flutter/material.dart';
import 'package:gsos/views/widgets/sizedbox.dart';
import 'package:gsos/views/widgets/text.dart';

class Onloading3 extends StatefulWidget {
  const Onloading3({super.key});

  @override
  State<Onloading3> createState() => _Onloading3State();
}

class _Onloading3State extends State<Onloading3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            getBoldText(text: "Be Aware with us"),
            get10height(),
            Image.asset("assets/images/img_9.png"),
            get10height(),
            getGreyText(text: "Your Ally in Digital Warfare!"),
          ],
        ),
      ),
    );
  }
}
