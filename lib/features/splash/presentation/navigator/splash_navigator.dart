import 'package:student_management_bloc_starter/core/navigator/navigate_route.dart';
import 'package:student_management_bloc_starter/features/auth/presentation/navigator/login_navigator.dart';
import 'package:student_management_bloc_starter/features/splash/presentation/view/splash_view.dart';

class SplashViewNavigator with LoginViewRoute {}

mixin SplashNavigator {
  openLoginView() {
    NavigateRoute.popAndPushRoute(
      SplashView(),
    );
  }
}
