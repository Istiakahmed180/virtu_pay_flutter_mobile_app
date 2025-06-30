import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';
import 'package:virtu_pay/src/app/constants/assets_path/png_assets.dart';
import 'package:virtu_pay/src/presentation/screens/home/controller/home_controller.dart';
import 'package:virtu_pay/src/presentation/screens/home/view/home_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final controller = Get.put(HomeController());

  final _pages = [
    const HomeScreen(),
    const Center(child: Text("Card")),
    const Center(child: Text("Transaction")),
    const Center(child: Text("Settings")),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final List<_NavItem> navItems = [
        _NavItem(icon: PngAssets.bottomNavigationHomeIcon, label: "Home"),
        _NavItem(icon: PngAssets.bottomNavigationCardIcon, label: "Card"),
        _NavItem(
          icon: PngAssets.bottomNavigationTransactionIcon,
          label: "Transaction",
        ),
        _NavItem(
          icon: PngAssets.bottomNavigationSettingsIcon,
          label: "Settings",
        ),
      ];

      return Scaffold(
        body: _pages[controller.selectedIndex.value],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            backgroundColor: AppColors.white,
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.selectedIndex.value,
            onTap: controller.onTapItem,
            selectedItemColor: AppColors.secondary,
            unselectedItemColor: AppColors.greyTwo,
            selectedLabelStyle: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
            items: List.generate(navItems.length, (index) {
              final item = navItems[index];
              final isSelected = controller.selectedIndex.value == index;
              return BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 6),
                  child: Image.asset(
                    item.icon,
                    width: 24,
                    height: 24,
                    fit: BoxFit.contain,
                    color: isSelected ? AppColors.secondary : AppColors.greyTwo,
                  ),
                ),
                label: item.label,
              );
            }),
          ),
        ),
      );
    });
  }
}

class _NavItem {
  final String icon;
  final String label;

  _NavItem({required this.icon, required this.label});
}
