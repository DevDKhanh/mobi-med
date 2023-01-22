import '../screens/forgot_password.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/onboarding_screen.dart';
import '../screens/profile_menu.dart';
import '../screens/signup_screen.dart';
import 'Routes.dart';

class Screen {
  static list(context) {
    return {
      Routes.homePage: (context) => const HomeScreen(),
      Routes.loginPage: (context) => const LoginScreen(),
      Routes.signupPage: (context) => const SignupScreen(),
      Routes.onboardingScreen: (context) => const OnboardingScreen(),
      Routes.forgotPassword: (context) => const ForgotPasswordScreen(),
      Routes.profileMenu: (context) => const ProfileMenuScreen(),
    };
  }
}
