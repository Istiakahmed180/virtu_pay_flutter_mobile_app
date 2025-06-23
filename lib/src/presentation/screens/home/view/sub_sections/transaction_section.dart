import 'package:flutter/material.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';
import 'package:virtu_pay/src/app/constants/assets_path/png_assets.dart';
import 'package:virtu_pay/src/presentation/screens/home/view/sub_sections/title_and_see_all_section.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> transactionList = [
      {
        "iconBgColor": Color(0xFFCFE9BD),
        "iconColor": Color(0xFF26490E),
        "title": "Fund Transfer",
        "date": "25 Jun 2025",
        "balance": "-\$18.5",
        "status": "Success",
      },
      {
        "iconBgColor": Color(0xFFBEE6ED),
        "iconColor": Color(0xFF093A43),
        "title": "Fund Transfer",
        "date": "25 Jun 2025",
        "balance": "-\$18.5",
        "status": "Success",
      },
      {
        "iconBgColor": Color(0xFFFFEDA3),
        "iconColor": Color(0xFF433407),
        "title": "Fund Transfer",
        "date": "25 Jun 2025",
        "balance": "-\$18.5",
        "status": "Success",
      },
      {
        "iconBgColor": Color(0xFFF1D7FF),
        "iconColor": Color(0xFF560482),
        "title": "Fund Transfer",
        "date": "25 Jun 2025",
        "balance": "-\$18.5",
        "status": "Success",
      },
    ];

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: TitleAndSeeAllSection(title: "Transaction"),
        ),
        const SizedBox(height: 10,),
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 18),
          itemBuilder: (context, index) {
            final transaction = transactionList[index];

            return Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                gradient: LinearGradient(
                  colors: [Color(0xFFF4F6FF), Color(0xFFFBFFEE)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(13),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: transaction["iconBgColor"],
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Image.asset(
                      PngAssets.commonGiftIcon,
                      width: 24,
                      height: 24,
                      color: transaction["iconColor"],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              transaction["title"],
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            Text(
                              transaction["balance"],
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              transaction["date"],
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                                color: AppColors.textPrimary.withValues(
                                  alpha: 0.60,
                                ),
                              ),
                            ),
                            Text(
                              transaction["status"],
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 11,
                                color: AppColors.success,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 8);
          },
          itemCount: transactionList.length,
        ),
      ],
    );
  }
}
