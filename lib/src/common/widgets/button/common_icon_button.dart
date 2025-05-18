import 'package:flutter/material.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';

class CommonIconButton extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final String text;
  final VoidCallback? onPressed;
  final FontWeight fontWeight;
  final double fontSize;
  final Color textColor;
  final Color? borderColor;
  final double borderWidth;
  final Color? backgroundColor;
  final String icon;
  final double iconWidth;
  final double iconHeight;
  final Color? iconColor;
  final double iconAndTextSpace;

  const CommonIconButton({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    this.borderRadius = 100,
    this.onPressed,
    this.fontWeight = FontWeight.w500,
    this.fontSize = 16,
    this.textColor = AppColors.textPrimary,
    this.borderColor,
    this.borderWidth = 0,
    this.backgroundColor = AppColors.primary,
    required this.icon,
    required this.iconWidth,
    required this.iconHeight,
    this.iconColor = AppColors.white,
    required this.iconAndTextSpace,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: backgroundColor,
          border:
              borderColor != null
                  ? Border.all(color: borderColor!, width: borderWidth)
                  : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: iconWidth,
              height: iconHeight,
              color: iconColor,
            ),
            SizedBox(width: iconAndTextSpace),
            Text(
              text,
              style: TextStyle(
                fontWeight: fontWeight,
                fontSize: fontSize,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
