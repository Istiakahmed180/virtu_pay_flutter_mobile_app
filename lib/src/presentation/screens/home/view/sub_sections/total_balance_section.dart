import 'package:flutter/material.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';
import 'package:virtu_pay/src/app/constants/assets_path/png_assets.dart';
import 'package:virtu_pay/src/common/widgets/button/common_icon_button.dart';

class TotalBalanceSection extends StatelessWidget {
  const TotalBalanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 177,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(PngAssets.cardFrame),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Total Balance",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13,
              color: AppColors.textPrimary.withValues(alpha: 0.60),
            ),
          ),
          const SizedBox(height: 2),
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
                width: 26,
                height: 26,
                color: AppColors.textPrimary,
              ),
            ],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              CommonIconButton(
                text: "Add Money",
                icon: PngAssets.commonPlusIcon,
              ),
              SizedBox(width: 16),
              CommonIconButton(
                text: "Exchange",
                icon: PngAssets.commonExchangeIcon,
                backgroundColor: AppColors.secondary,
                textColor: AppColors.white,
                iconColor: AppColors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
