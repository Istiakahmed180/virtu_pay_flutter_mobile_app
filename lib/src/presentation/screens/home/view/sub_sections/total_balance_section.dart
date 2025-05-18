import 'package:flutter/material.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';
import 'package:virtu_pay/src/app/constants/assets_path/png_assets.dart';
import 'package:virtu_pay/src/common/widgets/button/common_icon_button.dart';

class TotalBalanceSection extends StatelessWidget {
  const TotalBalanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(PngAssets.cardFrame),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Total Balance",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: AppColors.textTertiary.withValues(alpha: 0.60),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$1,200.00",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: AppColors.textPrimary,
                ),
              ),
              Image.asset(
                PngAssets.commonEyeShowIcon,
                width: 24,
                color: AppColors.textPrimary,
              ),
            ],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: CommonIconButton(
                  width: 138,
                  height: 40,
                  text: "Add Money",
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  icon: PngAssets.commonPlusIcon,
                  iconWidth: 20,
                  iconHeight: 20,
                  iconAndTextSpace: 6,
                  iconColor: AppColors.textPrimary,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: CommonIconButton(
                  width: 138,
                  height: 40,
                  text: "Exchange",
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  icon: PngAssets.commonPlusIcon,
                  iconWidth: 20,
                  iconHeight: 20,
                  iconAndTextSpace: 6,
                  iconColor: AppColors.white,
                  textColor: AppColors.white,
                  backgroundColor: AppColors.secondary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
