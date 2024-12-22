import 'package:student_management_bloc_starter/core/navigator/navigate_route.dart';
import 'package:student_management_bloc_starter/features/auth/presentation/navigator/register_navigator.dart';
import 'package:student_management_bloc_starter/features/auth/presentation/view/login_view.dart';

class LoginViewNavigator with RegisterViewRoute {}

mixin LoginViewRoute {
  openLoginView() {
    NavigateRoute.popAndPushRoute(
      LoginView(),
    );
  }
}
