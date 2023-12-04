import 'package:flutter/material.dart';
import 'package:flutter_advance/core/routing/routes.dart';
import 'package:flutter_advance/features/login/ui/widgets/login_screen.dart';
import 'package:flutter_advance/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      default:
      return MaterialPageRoute(builder: (_) =>const Scaffold(
        body: Center(child: Text("No Rotue found for this settings"),),
      ));
    }
  }
}
