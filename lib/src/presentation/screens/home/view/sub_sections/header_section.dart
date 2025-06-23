import 'package:flutter/material.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';
import 'package:virtu_pay/src/app/constants/assets_path/png_assets.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(PngAssets.commonMenuIcon, width: 24),
        Row(
          children: [
            Badge(
              backgroundColor: AppColors.error,
              smallSize: 8,
              child: Image.asset(
                PngAssets.commonNotificationIcon,
                width: 24,
                height: 24,
              ),
            ),
            SizedBox(width: 10),
            SizedBox(
              width: 40,
              height: 40,
              child: Image.asset(PngAssets.avatarOne),
            ),
          ],
        ),
      ],
    );
  }
}
