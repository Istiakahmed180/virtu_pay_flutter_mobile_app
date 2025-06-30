import 'package:get/get.dart';
import 'package:virtu_pay/src/presentation/screens/home/controller/home_controller.dart';
import 'package:virtu_pay/src/presentation/screens/onboarding/controller/onboarding_controller.dart';
import 'package:virtu_pay/src/presentation/screens/sign_in/controller/sign_in_controller.dart';
import 'package:virtu_pay/src/presentation/screens/sign_up/controller/sign_up_controller.dart';
import 'package:virtu_pay/src/presentation/screens/splash/controller/splash_controller.dart';

// Splash Binding
class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}

// Onboarding Binding
class OnboardingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingController>(() => OnboardingController());
  }
}

// Sign In Binding
class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }
}

// Sign Up Binding
class SignUpBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController());
  }
}

// Home Binding
class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
