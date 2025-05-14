import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:virtu_pay/src/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(VirtuPay());
  });
}
