import 'package:flutter/material.dart';
import 'package:virtu_pay/src/common/widgets/app_bar/common_default_app_bar.dart';
import 'package:virtu_pay/src/presentation/screens/home/view/sub_sections/credit_card_slider_section.dart';
import 'package:virtu_pay/src/presentation/screens/home/view/sub_sections/header_section.dart';
import 'package:virtu_pay/src/presentation/screens/home/view/sub_sections/quick_menu_section.dart';
import 'package:virtu_pay/src/presentation/screens/home/view/sub_sections/total_balance_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonDefaultAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 12),
            HeaderSection(),
            SizedBox(height: 20),
            TotalBalanceSection(),
            SizedBox(height: 20),
            QuickMenuSection(),
            SizedBox(height: 20),
            CreditCardSliderSection(),
          ],
        ),
      ),
    );
  }
}
