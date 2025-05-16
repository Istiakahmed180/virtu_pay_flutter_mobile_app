import 'package:flutter/material.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';
import 'package:virtu_pay/src/app/constants/assets_path/png_assets.dart';
import 'package:virtu_pay/src/common/widgets/button/common_button.dart';
import 'package:virtu_pay/src/common/widgets/text_input_field/common_text_input_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isPasswordVisible = true;
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 18),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(PngAssets.appSubLogo, height: 30),
            SizedBox(height: 30),
            Text(
              "Sign in to your Account",
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
                CommonTextInputField(hintText: "John285@gmail.com"),
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
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                              color: AppColors.textPrimary.withValues(
                                alpha: 0.10,
                              ),
                              width: 1,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            activeColor: AppColors.secondary,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
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
                              color: AppColors.textTertiary.withValues(
                                alpha: 0.60,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Forgot Password",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: AppColors.secondary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                CommonButton(
                  width: double.infinity,
                  height: 48,
                  text: "Sign In",
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Don’t have an account? ",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: AppColors.textTertiary.withValues(
                              alpha: 0.60,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: "Sign Up",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: AppColors.secondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        height: 0,
                        color: AppColors.border.withValues(alpha: 0.08),
                        endIndent: 16,
                      ),
                    ),
                    Text(
                      "Or",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColors.grey,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        height: 0,
                        color: AppColors.border.withValues(alpha: 0.08),
                        indent: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: AppColors.border.withValues(alpha: 0.10),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(PngAssets.commonGoogleIcon, width: 18),
                      SizedBox(width: 10),
                      Text(
                        "Continue with Google",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColors.border,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
