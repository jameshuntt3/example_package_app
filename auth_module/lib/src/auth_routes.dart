import 'package:auth_module/src/login/presenter/bloc/login_controller.dart';
import 'package:auth_module/src/login/presenter/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';


class AuthRoutes {
  static const signin = '/login';

  static AuthRoutes? _instance;

  static AuthRoutes getInstance() {
    return _instance ??= AuthRoutes();
  }

  final List<RouteBase> routes = [
    GoRoute(
      path: '/login',
      pageBuilder: (context, _) => MaterialPage(
        child: BlocProvider<LoginController>(
          create: (_) => LoginController(),
          child: const LoginPage(),
        ),
      ),
    ),
  ];
}
