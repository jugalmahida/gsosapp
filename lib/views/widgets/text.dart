import 'package:flutter/material.dart';

Widget getBoldText({required String text}) => Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold),
    );

Widget getGreyText({required String text}) => Text(
      text,
      style: TextStyle(
        color: Colors.grey,
        fontSize: 16,
      ),
    );
