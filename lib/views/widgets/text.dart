import 'package:flutter/material.dart';

Widget getBoldText({required String text}) => Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    );

Widget getGreyText({required String text}) => Text(
      text,
      style: TextStyle(
        color: Colors.grey,
        fontSize: 16,
      ),
    );
