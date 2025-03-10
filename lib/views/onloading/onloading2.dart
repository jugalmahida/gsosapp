import 'package:flutter/material.dart';
import 'package:gsos/views/widgets/sizedbox.dart';
import 'package:gsos/views/widgets/text.dart';

class Onloading2 extends StatefulWidget {
  const Onloading2({super.key});

  @override
  State<Onloading2> createState() => _Onloading2State();
}

class _Onloading2State extends State<Onloading2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            getBoldText(text: "No, Just be Aware"),
            get10height(),
            Image.asset("assets/images/img_8.png"),
            get10height(),
            getGreyText(text: "If it's smart, it's vulneraable."),
          ],
        ),
      ),
    );
  }
}
