import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';
import 'package:virtu_pay/src/app/constants/assets_path/png_assets.dart';
import 'package:virtu_pay/src/app/routes/routes.dart';
import 'package:virtu_pay/src/common/widgets/button/common_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(PngAssets.welcomeFrame),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Spacer(),
            SizedBox(height: 80),
            Text(
              "Welcome to",
              style: TextStyle(fontSize: 28, color: AppColors.textPrimary),
            ),
            SizedBox(height: 16),
            Image.asset(PngAssets.appSubLogo, width: 230),
            Spacer(),
            Text(
              textAlign: TextAlign.center,
              "Your secure, smart, and instant\nvirtual card solution",
              style: TextStyle(
                color: AppColors.textPrimary.withValues(alpha: 0.60),
                fontSize: 16,
              ),
            ),
            SizedBox(height: 60),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: CommonButton(
                onPressed: () => Get.toNamed(BaseRoute.onboarding),
                width: double.infinity,
                height: 52,
                text: "Get Started",
              ),
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
