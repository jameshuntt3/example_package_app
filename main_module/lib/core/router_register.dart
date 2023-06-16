import 'package:auth_module/auth_module.dart';
import 'package:design_system_module/design_system_module.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_module/onboarding_module.dart';

class RouterRegister {
  static RouterRegister? _instance;

  static RouterRegister getInstance() {
    return _instance ??= RouterRegister();
  }

  final RouterConfig<Object> router = GoRouter(
    navigatorKey: GlobalKey<NavigatorState>(),
    initialLocation: '/login',
    routes: <RouteBase>[
      ShellRoute(
        builder: (context, state, child) {
          return child;
        },
        routes: [
          ...AuthRoutes.getInstance().routes,
          ...OnboardingRoutes.getInstance().routes,
        ]
      )
    ],
  );
}
