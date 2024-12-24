import 'package:student_management_bloc_starter/core/navigator/navigate_route.dart';
import 'package:student_management_bloc_starter/features/auth/presentation/view/register_view.dart';

class RegisterViewNavigator {}

mixin RegisterViewRoute {
  openRegisterView() {
    NavigateRoute.pushRoute(
      RegisterView(),
    );
  }
}

  