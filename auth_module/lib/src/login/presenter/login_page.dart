import 'package:auth_module/src/login/presenter/bloc/login_controller.dart';
import 'package:auth_module/src/login/presenter/bloc/login_state.dart';
import 'package:design_system_module/design_system_module.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LoginController, LoginState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: null,
                  child: const Text('Sign Up'),
                ),
                ElevatedButton(
                  onPressed: () => context.push('/registration'),
                  child: const Text('Onboarding'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
