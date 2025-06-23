import 'package:flutter/material.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';
import 'package:virtu_pay/src/app/constants/assets_path/png_assets.dart';
import 'package:virtu_pay/src/common/widgets/button/common_icon_button.dart';
import 'package:virtu_pay/src/presentation/screens/home/view/sub_sections/title_and_see_all_section.dart';

class CreditCardSliderSection extends StatelessWidget {
  const CreditCardSliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> creditCardList = [
      {
        "title": "Current Balance",
        "titleColor": AppColors.textPrimary,
        "balance": "\$1359.00",
        "balanceColor": AppColors.textPrimary,
        "logo": PngAssets.appLogo,
        "cardTitle": "Credit Card",
        "cardColor": AppColors.textPrimary,
        "accountNo": "0347 582 425 245",
        "accountColor": AppColors.textPrimary,
        "frame": PngAssets.creditCardOne,
        "buttonBgColor": AppColors.textPrimary,
        "buttonContentColor": AppColors.white,
      },
      {
        "title": "Current Balance",
        "titleColor": AppColors.white,
        "balance": "\$1359.00",
        "balanceColor": AppColors.primary,
        "logo": PngAssets.appLogo,
        "cardTitle": "Credit Card",
        "cardColor": AppColors.white,
        "accountNo": "0347 582 425 245",
        "accountColor": AppColors.primary,
        "frame": PngAssets.creditCardTwo,
        "buttonBgColor": AppColors.primary,
        "buttonContentColor": AppColors.textPrimary,
      },
      {
        "title": "Current Balance",
        "titleColor": AppColors.white,
        "balance": "\$1359.00",
        "balanceColor": AppColors.primary,
        "logo": PngAssets.appLogo,
        "cardTitle": "Credit Card",
        "cardColor": AppColors.white,
        "accountNo": "0347 582 425 245",
        "accountColor": AppColors.primary,
        "frame": PngAssets.creditCardTwo,
        "buttonBgColor": AppColors.primary,
        "buttonContentColor": AppColors.textPrimary,
      },
    ];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: const TitleAndSeeAllSection(title: "My Card"),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 168,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(width: 20);
            },
            padding: const EdgeInsets.symmetric(horizontal: 18),
            scrollDirection: Axis.horizontal,
            itemCount: creditCardList.length,
            itemBuilder: (context, index) {
              final card = creditCardList[index];
              return Container(
                padding: EdgeInsets.all(18),
                width: 303,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(card["frame"]),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              card["title"],
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: card["titleColor"],
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              card["balance"],
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: card["balanceColor"],
                              ),
                            ),
                          ],
                        ),
                        Image.asset(card["logo"], width: 32, height: 24),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              card["cardTitle"],
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: card["cardColor"],
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              card["accountNo"],
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: card["accountColor"],
                              ),
                            ),
                          ],
                        ),
                        CommonIconButton(
                          backgroundColor: card["buttonBgColor"],
                          text: "Details",
                          icon: PngAssets.commonEyeShowIcon,
                          iconColor: card["buttonContentColor"],
                          textColor: card["buttonContentColor"],
                          iconAndTextSpace: 4,
                          horizontalPadding: 10,
                          verticalPadding: 8,
                          iconWidth: 16,
                          iconHeight: 16,
                          fontSize: 11,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
