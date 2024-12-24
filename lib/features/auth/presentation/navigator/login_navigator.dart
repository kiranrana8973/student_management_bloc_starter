import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_management_bloc_starter/core/navigator/navigate_route.dart';
import 'package:student_management_bloc_starter/core/service_locator/service_locator.dart';
import 'package:student_management_bloc_starter/features/auth/presentation/bloc/login_cubit.dart';
import 'package:student_management_bloc_starter/features/auth/presentation/navigator/register_navigator.dart';
import 'package:student_management_bloc_starter/features/auth/presentation/view/login_view.dart';
import 'package:student_management_bloc_starter/features/home/presentation/navigator/home_navigator.dart';

class LoginViewNavigator with RegisterViewRoute, HomeRoute {}

mixin LoginViewRoute {
  openLoginView() {
    NavigateRoute.popAndPushRoute(
      BlocProvider.value(
        value: serviceLocator<LoginCubit>(),
        child: LoginView(),
      ),
    );
  }
}
