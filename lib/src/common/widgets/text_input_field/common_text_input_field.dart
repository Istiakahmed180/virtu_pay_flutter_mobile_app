import 'package:flutter/material.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';

class CommonTextInputField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final Color? fillColor;
  final VoidCallback? onTap;
  final double? height;
  final String? suffixIcon;
  final Color? suffixIconColor;

  const CommonTextInputField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.controller,
    this.onChanged,
    this.keyboardType,
    this.onTap,
    this.fillColor,
    this.height = 48,
    this.suffixIcon,
    this.suffixIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        obscureText: obscureText,
        keyboardType: keyboardType,
        onTap: onTap,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: AppColors.textPrimary.withValues(alpha: 0.60),
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor ?? AppColors.transparent,
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          hintStyle: TextStyle(
            color: AppColors.textPrimary.withValues(alpha: 0.60),
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: AppColors.textPrimary.withValues(alpha: 0.10),
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: AppColors.secondary, width: 1),
          ),
          suffixIcon:
              suffixIcon != null
                  ? Image.asset(
                    suffixIcon!,
                    width: 20,
                    height: 20,
                    color: suffixIconColor,
                  )
                  : null,
        ),
      ),
    );
  }
}
