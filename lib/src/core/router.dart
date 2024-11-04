import 'package:go_router/go_router.dart';
import 'package:quizzy/src/features/onboarding/ui/onboarding_screen.dart';

import '../features/auth/ui/get_started_screen.dart';

abstract class AppRoutes {
  static String get onboarding => '/onboarding';
  static String get getStarted => '/getStarted';
  static String get login => '/login';
  static String get signup => '/signup';
  static String get createAvatar => '/createAvatar';
  static String get editAvatar => '/editAvatar';
  static String get setupProfile => '/setupProfile';
  static String get congratulations => '/congratulations';
}

final GoRouter router = GoRouter(
  initialLocation: AppRoutes.onboarding,
  routes: [
    GoRoute(
      path: AppRoutes.onboarding,
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: AppRoutes.getStarted,
      builder: (context, state) => const GetStartedScreen(),
    ),
  ],
);
