import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/home/page.dart';
import '../features/login/page.dart';
import '../features/register/page.dart';

GoRouter router(BuildContext context) => GoRouter(
      initialLocation: Routes.register,
      routes: [
        GoRoute(
          path: Routes.login,
          builder: (context, state) {
            return const LoginPage();
          },
        ),
        GoRoute(
          path: Routes.home,
          builder: (context, state) {
            return const HomePage();
          },
        ),
        GoRoute(
          path: Routes.register,
          builder: (context, state) {
            return const RegisterPage();
          },
        ),
      ],
    );

class Routes {
  static const String login = "/login";
  static const String register = "/register";
  static const String home = "/home";
  static const String forgotPassword = "/forgot-password";
}
