import 'package:get/get.dart';
import 'package:virtu_pay/src/app/routes/routes.dart';
import 'package:virtu_pay/src/app/routes/routes_config.dart';

List<GetPage> routesHandler = [
  // Splash Screen Handler
  GetPage(name: BaseRoute.splash, page: () => RoutesConfig.splash),

  // Welcome Screen Handler
  GetPage(name: BaseRoute.welcome, page: () => RoutesConfig.welcome),

  // Onboarding Screen Handler
  GetPage(name: BaseRoute.onboarding, page: () => RoutesConfig.onboarding),

  // Sign In Screen Handler
  GetPage(name: BaseRoute.signIn, page: () => RoutesConfig.signIn),
];
