import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onboarding_module/src/registration/presenter/bloc/registration_controller.dart';
import 'package:onboarding_module/src/registration/presenter/bloc/registration_state.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RegistrationController, RegistrationState>(
        builder: (context, state) {
          return const Center(
            child: Text('Onboarding'),
          );
        },
      ),
    );
  }
}
