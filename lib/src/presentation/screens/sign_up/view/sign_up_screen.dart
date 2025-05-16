import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';
import 'package:virtu_pay/src/app/constants/assets_path/png_assets.dart';
import 'package:virtu_pay/src/app/routes/routes.dart';
import 'package:virtu_pay/src/common/widgets/button/common_button.dart';
import 'package:virtu_pay/src/common/widgets/text_input_field/common_text_input_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isPasswordVisible = true;
  bool isConfirmPasswordVisible = true;
  bool isRememberMe = false;

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
                  "Create Your Account",
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
                      "Full Name",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: AppColors.textPrimary.withValues(alpha: 0.60),
                      ),
                    ),
                    SizedBox(height: 8),
                    CommonTextInputField(
                      hintText: "Jhhn Wick",
                      keyboardType: TextInputType.name,
                    ),
                  ],
                ),
                SizedBox(height: 20),
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
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: AppColors.textPrimary.withValues(alpha: 0.60),
                      ),
                    ),
                    SizedBox(height: 8),
                    CommonTextInputField(
                      hintText: "12345678",
                      obscureText: isPasswordVisible,
                      suffixIcon:
                          isPasswordVisible == true
                              ? PngAssets.commonEyeShowIcon
                              : PngAssets.commonEyeHideIcon,
                      isSuffixIconChanged: true,
                      onSuffixChanged: () {
                        isPasswordVisible = !isPasswordVisible;
                        setState(() {});
                      },
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Confirm Password",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: AppColors.textPrimary.withValues(alpha: 0.60),
                      ),
                    ),
                    SizedBox(height: 8),
                    CommonTextInputField(
                      hintText: "12345678",
                      obscureText: isConfirmPasswordVisible,
                      suffixIcon:
                          isConfirmPasswordVisible == true
                              ? PngAssets.commonEyeShowIcon
                              : PngAssets.commonEyeHideIcon,
                      isSuffixIconChanged: true,
                      onSuffixChanged: () {
                        isConfirmPasswordVisible = !isConfirmPasswordVisible;
                        setState(() {});
                      },
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ],
                ),
                SizedBox(height: 5),
                GestureDetector(
                  onTap: () {
                    isRememberMe = !isRememberMe;
                    setState(() {});
                  },
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: AppColors.white,
                        side: BorderSide(
                          color: AppColors.textPrimary.withValues(alpha: 0.10),
                          width: 1,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        activeColor: AppColors.secondary,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity: VisualDensity.compact,
                        value: isRememberMe,
                        onChanged: (bool? value) {
                          isRememberMe = value!;
                          setState(() {});
                        },
                      ),
                      Text(
                        "Remember me",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: AppColors.textTertiary.withValues(alpha: 0.60),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                CommonButton(
                  width: double.infinity,
                  height: 48,
                  text: "Sign Up",
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: AppColors.textTertiary.withValues(
                              alpha: 0.60,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: "Sign In",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: AppColors.secondary,
                          ),
                          recognizer:
                              TapGestureRecognizer()
                                ..onTap = () {
                                  Get.back();
                                },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
