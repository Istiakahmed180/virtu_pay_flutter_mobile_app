import 'package:virtu_pay/src/app/navigation/navigation_screen.dart';
import 'package:virtu_pay/src/presentation/screens/forgot_password/view/forgot_password_screen.dart';
import 'package:virtu_pay/src/presentation/screens/onboarding/view/onboarding_screen.dart';
import 'package:virtu_pay/src/presentation/screens/sign_in/view/sign_in_screen.dart';
import 'package:virtu_pay/src/presentation/screens/sign_up/view/sign_up_screen.dart';
import 'package:virtu_pay/src/presentation/screens/splash/view/splash_screen.dart';
import 'package:virtu_pay/src/presentation/screens/welcome/view/welcome_screen.dart';

class RoutesConfig {
  // Splash Screen
  static const splash = SplashScreen();

  // Welcome Screen
  static const welcome = WelcomeScreen();

  // Onboarding Screen
  static const onboarding = OnboardingScreen();

  // Sign In Screen
  static const signIn = SignInScreen();

  // Sign Up Screen
  static const signUp = SignUpScreen();

  // Forgot Password Screen
  static const forgotPassword = ForgotPasswordScreen();

  // Navigation Screen
  static const navigation = NavigationScreen();
}
