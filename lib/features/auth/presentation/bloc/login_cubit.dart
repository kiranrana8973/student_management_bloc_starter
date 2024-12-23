import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_management_bloc_starter/features/auth/presentation/navigator/login_navigator.dart';

class LoginCubit extends Cubit<void> {
  final LoginViewNavigator _loginViewNavigator;

  LoginCubit({required LoginViewNavigator loginViewNavigator})
      : _loginViewNavigator = loginViewNavigator,
        super(null);

  void navigatorToRegister() {
    _loginViewNavigator.openRegisterView();
  }

  void navigateToHome() {
    _loginViewNavigator.openHomeView();
  }
}
