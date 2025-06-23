import 'package:flutter/material.dart';
import 'package:virtu_pay/src/presentation/screens/home/view/sub_sections/title_and_see_all_section.dart';

class CreditCardSliderSection extends StatelessWidget {
  const CreditCardSliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [TitleAndSeeAllSection(title: "My Card")]);
  }
}
