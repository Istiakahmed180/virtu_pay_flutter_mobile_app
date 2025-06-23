import 'package:flutter/material.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';
import 'package:virtu_pay/src/app/constants/assets_path/png_assets.dart';
import 'package:virtu_pay/src/presentation/screens/home/view/sub_sections/title_and_see_all_section.dart';

class QuickMenuSection extends StatelessWidget {
  const QuickMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          TitleAndSeeAllSection(title: "Quick Menu"),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(PngAssets.quickMenuFrame),
                fit: BoxFit.fill,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildActionButton(
                  title: "Send Money",
                  boxColor: Color(0xFFDA646C).withValues(alpha: 0.10),
                  icon: PngAssets.commonMoneySendIcon,
                ),
                _buildActionButton(
                  title: "Referrals",
                  boxColor: Color(0xFF04A485).withValues(alpha: 0.10),
                  icon: PngAssets.commonUserSwitchIcon,
                ),
                _buildActionButton(
                  title: "Support",
                  boxColor: Color(0xFFB205BD).withValues(alpha: 0.10),
                  icon: PngAssets.commonCustomerSupportIcon,
                ),
                _buildActionButton(
                  title: "Rewards",
                  boxColor: Color(0xFF7E52FF).withValues(alpha: 0.10),
                  icon: PngAssets.commonGiftIcon,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required String title,
    required Color boxColor,
    required String icon,
  }) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: boxColor,
          ),
          child: Image.asset(icon, width: 22, height: 24),
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 11,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
