import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_management_bloc_starter/core/app_theme/app_theme.dart';
import 'package:student_management_bloc_starter/core/navigator/navigator_key.dart';
import 'package:student_management_bloc_starter/core/service_locator/service_locator.dart';
import 'package:student_management_bloc_starter/features/splash/presentation/bloc/splash_cubit.dart';
import 'package:student_management_bloc_starter/features/splash/presentation/view/splash_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppNavigatorKey.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Student Management',
      theme: AppTheme.getApplicationTheme(false),
      home: BlocProvider(
        create: (context) => serviceLocator<SplashCubit>(),
        child: SplashView(),
      ),
    );
  }
}
