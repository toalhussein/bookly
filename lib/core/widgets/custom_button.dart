import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.colorText,
    this.borderRadius,
    required this.textButton,
    this.fontSize,
  });
  final Color backgroundColor;
  final Color colorText;
  final BorderRadius? borderRadius;
  final String textButton;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            ),
          ),
          child: Text(
            textButton,
            style: Style.textStyle18.copyWith(
                color: colorText,
                fontWeight: FontWeight.w800,
                fontSize: fontSize),
          )),
    );
  }
}
