import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtu_pay/src/common/navigation_controller.dart';

class CustomNavigationItem extends StatelessWidget {
  CustomNavigationItem({super.key});

  final navigationController = Get.find<NavigationController>();

  @override
  Widget build(BuildContext context) {
    return Text("Navigation Item");
  }
}
