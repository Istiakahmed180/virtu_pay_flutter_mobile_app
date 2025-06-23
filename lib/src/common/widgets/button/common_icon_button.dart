import 'package:flutter/material.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';

class CommonIconButton extends StatelessWidget {
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
  final double horizontalPadding;
  final double verticalPadding;

  const CommonIconButton({
    super.key,
    required this.text,
    this.borderRadius = 100,
    this.onPressed,
    this.fontWeight = FontWeight.w600,
    this.fontSize = 13,
    this.textColor = AppColors.textPrimary,
    this.borderColor,
    this.borderWidth = 0,
    this.backgroundColor = AppColors.primary,
    required this.icon,
    this.iconWidth = 20,
    this.iconHeight = 20,
    this.iconColor = AppColors.textPrimary,
    this.iconAndTextSpace = 6,
    this.horizontalPadding = 18.5,
    this.verticalPadding = 10,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
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
