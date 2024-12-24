import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_management_bloc_starter/features/splash/presentation/navigator/splash_navigator.dart';

class SplashCubit extends Cubit<void> {
  final SplashViewNavigator _splashViewNavigator;

  SplashCubit({required SplashViewNavigator splashViewNavigator})
      : _splashViewNavigator = splashViewNavigator,
        super(null);

  void navigateToLogin() async {
    Future.delayed(Duration(seconds: 2), () {
      _splashViewNavigator.openLoginView();
    });
  }
}


