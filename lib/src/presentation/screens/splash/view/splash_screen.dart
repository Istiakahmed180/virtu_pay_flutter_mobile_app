import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';
import 'package:virtu_pay/src/app/constants/assets_path/png_assets.dart';
import 'package:virtu_pay/src/presentation/screens/splash/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<SplashController>();

    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(toolbarHeight: 0, backgroundColor: AppColors.primary),
      body: Center(child: Image.asset(PngAssets.appLogo, width: 110)),
    );
  }
}
