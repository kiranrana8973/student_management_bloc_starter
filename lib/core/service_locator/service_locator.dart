import 'package:get_it/get_it.dart';
import 'package:student_management_bloc_starter/features/auth/presentation/bloc/login_cubit.dart';
import 'package:student_management_bloc_starter/features/auth/presentation/navigator/login_navigator.dart';
import 'package:student_management_bloc_starter/features/auth/presentation/navigator/register_navigator.dart';
import 'package:student_management_bloc_starter/features/splash/presentation/bloc/splash_cubit.dart';
import 'package:student_management_bloc_starter/features/splash/presentation/navigator/splash_navigator.dart';

final serviceLocator = GetIt.instance;

void setupServiceLocator() {
  _initSplashCubit();

  _initAuthCubit();
}

void _initSplashCubit() {
  serviceLocator
      .registerLazySingleton<SplashViewNavigator>(() => SplashViewNavigator());
  serviceLocator.registerLazySingleton<SplashCubit>(
      () => SplashCubit(splashViewNavigator: serviceLocator()));
}

void _initAuthCubit() {
  serviceLocator.registerLazySingleton<RegisterViewNavigator>(
      () => RegisterViewNavigator());
  serviceLocator
      .registerLazySingleton<LoginViewNavigator>(() => LoginViewNavigator());

  serviceLocator.registerLazySingleton<LoginCubit>(
      () => LoginCubit(loginViewNavigator: serviceLocator()));
}
