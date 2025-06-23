import 'package:flutter/material.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';
import 'package:virtu_pay/src/app/constants/assets_path/png_assets.dart';
import 'package:virtu_pay/src/common/widgets/button/common_icon_button.dart';

class TitleAndSeeAllSection extends StatelessWidget {
  final String title;

  const TitleAndSeeAllSection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: AppColors.textPrimary,
          ),
        ),
        CommonIconButton(
          text: "See All",
          icon: PngAssets.commonEyeShowWhiteIcon,
          backgroundColor: AppColors.secondary,
          textColor: AppColors.white,
          iconColor: AppColors.white,
          horizontalPadding: 10,
          verticalPadding: 8,
          iconWidth: 13,
          iconHeight: 13,
          iconAndTextSpace: 4,
          fontSize: 11,
        ),
      ],
    );
  }
}
