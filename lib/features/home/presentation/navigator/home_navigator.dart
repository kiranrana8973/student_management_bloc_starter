import 'package:student_management_bloc_starter/core/navigator/navigate_route.dart';
import 'package:student_management_bloc_starter/features/home/presentation/view/home_view.dart';

class HomeNavigator {}

mixin HomeRoute {
  openHomeView() {
    NavigateRoute.popAndPushRoute(
      HomeView(),
    );
  }
}
