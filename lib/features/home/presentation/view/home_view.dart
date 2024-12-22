import 'package:flutter/material.dart';
import 'package:student_management_bloc_starter/core/common/snackbar/my_snackbar.dart';
import 'package:student_management_bloc_starter/features/auth/presentation/view/login_view.dart';
import 'package:student_management_bloc_starter/features/home/presentation/view/bottom_view/account_view.dart';
import 'package:student_management_bloc_starter/features/home/presentation/view/bottom_view/batch_view.dart';
import 'package:student_management_bloc_starter/features/home/presentation/view/bottom_view/course_view.dart';
import 'package:student_management_bloc_starter/features/home/presentation/view/bottom_view/dashboard_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool _isDarkTheme = false;
  int _selectedIndex = 0;
  final List<Widget> _views = <Widget>[
    const DashboardView(),
    const AccountView(),
    const CourseView(),
    const BatchView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Logout code
              showMySnackBar(
                context: context,
                message: 'Logging out...',
                color: Colors.red,
              );
              // Wait for 1 second
              Future.delayed(const Duration(seconds: 2), () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginView(),
                  ),
                );
              });
            },
          ),
          Switch(
              value: _isDarkTheme,
              onChanged: (value) {
                // Change theme
                setState(() {
                  _isDarkTheme = value;
                });
              }),
        ],
      ),
      body: _views.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Course',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Batch',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
