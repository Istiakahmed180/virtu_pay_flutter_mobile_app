import 'package:flutter/material.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';

class LightTheme {
  ThemeData lightTheme(context) => ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.background,
    fontFamily: "Poppins",
  );
}
