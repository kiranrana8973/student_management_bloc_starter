import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_management_bloc_starter/features/splash/presentation/bloc/splash_cubit.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() async {
    super.initState();

    Future.delayed(const Duration(seconds: 2));

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SplashCubit>().navigateToLogin();
    });
  }

  // @override
  // void didChangeDependencies() {
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     Future.delayed(const Duration(seconds: 2));
  //     context.read<SplashCubit>().navigateToLogin();
  //   });
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/splash.png'),
                ),
                const Text(
                  'Student Course Management',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 10),
                const CircularProgressIndicator(),
                const SizedBox(height: 10),
                const Text('version : 1.0.0')
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: MediaQuery.of(context).size.width / 4,
            child: const Text(
              'Developed by: Khatra Sir le',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
