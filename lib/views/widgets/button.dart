import 'package:flutter/material.dart';
import 'package:gsos/constants/colors.dart';

Widget getMainButton({required VoidCallback onPressed, String? name}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: FontColors.titleColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(
          name!,
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
      ),
    ),
  );
}
