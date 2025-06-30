import 'package:get/get.dart';
import 'package:virtu_pay/src/app/bindings/app_bindings.dart';
import 'package:virtu_pay/src/app/routes/routes.dart';
import 'package:virtu_pay/src/app/routes/routes_config.dart';

List<GetPage> routesHandler = [
  // Splash Screen Handler
  GetPage(
    name: BaseRoute.splash,
    page: () => RoutesConfig.splash,
    binding: SplashBinding(),
  ),

  // Welcome Screen Handler
  GetPage(name: BaseRoute.welcome, page: () => RoutesConfig.welcome),

  // Onboarding Screen Handler
  GetPage(
    name: BaseRoute.onboarding,
    page: () => RoutesConfig.onboarding,
    binding: OnboardingBinding(),
  ),

  // Sign In Screen Handler
  GetPage(
    name: BaseRoute.signIn,
    page: () => RoutesConfig.signIn,
    binding: SignInBinding(),
  ),

  // Sign Up Screen Handler
  GetPage(
    name: BaseRoute.signUp,
    page: () => RoutesConfig.signUp,
    binding: SignUpBinding(),
  ),

  // Forgot Password Screen Handler
  GetPage(
    name: BaseRoute.forgotPassword,
    page: () => RoutesConfig.forgotPassword,
  ),

  // Home Screen Handler
  GetPage(
    name: BaseRoute.home,
    page: () => RoutesConfig.home,
    binding: HomeBinding(),
  ),

  // Navigation Screen Handler
  GetPage(
    name: BaseRoute.navigation,
    page: () => RoutesConfig.navigation,
    binding: HomeBinding(),
  ),
];
