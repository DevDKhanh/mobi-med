import 'package:mobi_med/router/Routes.dart';
import 'package:mobi_med/screens/forgot_password.dart';
import 'package:mobi_med/screens/home_screen.dart';
import 'package:mobi_med/screens/login_screen.dart';
import 'package:mobi_med/screens/onboarding_screen.dart';
import 'package:mobi_med/screens/signup_screen.dart';

class Screen {
  static list(context) {
    return {
      Routes.homePage: (context) => const HomeScreen(),
      Routes.loginPage: (context) => const LoginScreen(),
      Routes.signupPage: (context) => const SignupScreen(),
      Routes.onboardingScreen: (context) => const OnboardingScreen(),
      Routes.forgotPassword: (context) => const ForgotPasswordScreen(),
    };
  }
}
