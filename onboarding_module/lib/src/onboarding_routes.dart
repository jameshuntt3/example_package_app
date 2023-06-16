import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:onboarding_module/src/registration/presenter/bloc/registration_controller.dart';
import 'package:onboarding_module/src/registration/registration_page.dart';

class OnboardingRoutes {
  static const onboarding = '/registration';

  static OnboardingRoutes? _instance;

  static OnboardingRoutes getInstance() {
    return _instance ??= OnboardingRoutes();
  }

  final List<RouteBase> routes = [
    GoRoute(
      path: '/onboarding',
      pageBuilder: (context, _) => MaterialPage(
        child: BlocProvider<RegistrationController>(
          create: (_) => RegistrationController(),
          child: const RegistrationPage(),
        ),
      ),
    ),
  ];
}
