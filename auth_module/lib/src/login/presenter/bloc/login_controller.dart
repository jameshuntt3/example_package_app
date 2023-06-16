import 'package:design_system_module/design_system_module.dart';

import 'login_state.dart';

class LoginController extends Cubit<LoginState> {
  LoginController() : super(LoginInitialState());

  Future<void> signin() async {
    //login service
    emit(LoginSteadyState());
  }
}
