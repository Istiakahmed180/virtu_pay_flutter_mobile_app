import 'package:get/get.dart';
import 'package:virtu_pay/src/presentation/screens/home/controller/home_controller.dart';

// Home Binding
class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
