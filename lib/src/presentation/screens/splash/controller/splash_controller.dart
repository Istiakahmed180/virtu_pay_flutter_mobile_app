import 'package:get/get.dart';
import 'package:virtu_pay/src/app/routes/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    moveToNextScreen();
  }

  Future<void> moveToNextScreen() async {
    Future.delayed(Duration(seconds: 5), () {
      Get.offNamed(BaseRoute.welcome);
    });
  }
}
