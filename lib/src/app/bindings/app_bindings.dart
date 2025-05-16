import 'package:get/get.dart';
import 'package:virtu_pay/src/common/navigation_controller.dart';

// Navigation Binding
class NavigationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationController>(() => NavigationController());
  }
}
