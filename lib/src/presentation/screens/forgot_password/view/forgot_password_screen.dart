import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';
import 'package:virtu_pay/src/app/constants/assets_path/png_assets.dart';
import 'package:virtu_pay/src/app/routes/routes.dart';
import 'package:virtu_pay/src/common/widgets/button/common_button.dart';
import 'package:virtu_pay/src/common/widgets/text_input_field/common_text_input_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                Image.asset(PngAssets.appSubLogo, height: 30),
                SizedBox(height: 30),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email Address",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: AppColors.textPrimary.withValues(alpha: 0.60),
                      ),
                    ),
                    SizedBox(height: 8),
                    CommonTextInputField(
                      hintText: "John285@gmail.com",
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ],
                ),
                SizedBox(height: 40),
                CommonButton(
                  width: double.infinity,
                  height: 48,
                  text: "Reset Password",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
