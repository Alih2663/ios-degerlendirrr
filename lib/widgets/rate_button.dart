import 'package:rating_app/styles/app_colors.dart';
import 'package:flutter/material.dart';

class RateButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  final bool isRated;

  const RateButton(
      {super.key,
      required this.buttonText,
      required this.onPressed,
      required this.isRated});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor:
                isRated ? AppColors.secondaryText : AppColors.primaryBg,
            elevation: 0.0,
            shadowColor: Colors.transparent),
        onPressed: () {
          onPressed();
        },
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
