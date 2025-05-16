import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';

class CommonDefaultAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CommonDefaultAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AppBar(
        backgroundColor: AppColors.primary,
        surfaceTintColor: AppColors.primary,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(0);
}
