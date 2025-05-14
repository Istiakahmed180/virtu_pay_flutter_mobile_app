import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtu_pay/src/app/constants/app_strings.dart';
import 'package:virtu_pay/src/app/routes/routes.dart';
import 'package:virtu_pay/src/app/routes/routes_handler.dart';
import 'package:virtu_pay/src/app/theme/light_theme.dart';

class VirtuPay extends StatelessWidget {
  const VirtuPay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      defaultTransition: Transition.topLevel,
      transitionDuration: const Duration(milliseconds: 600),
      themeMode: ThemeMode.light,
      theme: LightTheme().lightTheme(context),
      getPages: routesHandler,
      initialRoute: BaseRoute.splash,
    );
  }
}
