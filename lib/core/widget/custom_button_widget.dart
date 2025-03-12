import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius,
      required this.textTilte,
      this.fontSize,
      this.onPressed});

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String textTilte;
  final double? fontSize;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          textTilte,
          style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.bold,
              color: textColor,
              fontSize: fontSize),
        ),
      ),
    );
  }
}
