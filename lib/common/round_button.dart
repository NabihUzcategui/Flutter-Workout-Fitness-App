import 'package:flutter/material.dart';
import 'package:flutter_workout_fitness/common/color_extension.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const RoundButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: double.maxFinite,
      color: TColor.white,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: TColor.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
