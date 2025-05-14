import 'package:flutter/material.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';

class CommonElevatedButton extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final String text;
  final VoidCallback? onPressed;
  final FontWeight fontWeight;
  final double fontSize;
  final Color textColor;
  final Color? backgroundColor;

  const CommonElevatedButton({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius = 100,
    required this.text,
    this.onPressed,
    this.fontWeight = FontWeight.w500,
    this.fontSize = 16,
    this.textColor = AppColors.textPrimary,
    this.backgroundColor = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(borderRadius),
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: backgroundColor,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: fontWeight,
            fontSize: fontSize,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
