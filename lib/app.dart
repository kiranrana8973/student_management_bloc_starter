import 'package:flutter/material.dart';
import 'package:student_management_bloc_starter/core/app_theme/app_theme.dart';
import 'package:student_management_bloc_starter/features/splash/presentation/view/splash_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Management',
      theme: AppTheme.getApplicationTheme(false),
      home: SplashView(),
    );
  }
}
