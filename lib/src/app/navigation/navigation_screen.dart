import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtu_pay/src/app/navigation/custom_navigation_item.dart';
import 'package:virtu_pay/src/common/navigation_controller.dart';
import 'package:virtu_pay/src/common/widgets/app_bar/common_default_app_bar.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final NavigationController navigationController =
      Get.find<NavigationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonDefaultAppBar(),
      body: GetBuilder<NavigationController>(
        builder: (controller) {
          return controller.currentPage;
        },
      ),
      bottomNavigationBar: CustomNavigationItem(),
    );
  }
}
