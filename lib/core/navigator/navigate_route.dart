import 'package:flutter/material.dart';
import 'package:student_management_bloc_starter/core/navigator/navigator_key.dart';

class NavigateRoute {
  NavigateRoute._();

  // Open another Screen
  static void pushRoute(Widget view) {
    Navigator.push(
      AppNavigatorKey.navigatorKey.currentState!.context,
      MaterialPageRoute(builder: (context) => view),
    );
  }

  // Close the current Screen and Open another Screen
  static void popAndPushRoute(Widget view) {
    Navigator.pushReplacement(
      AppNavigatorKey.navigatorKey.currentState!.context,
      MaterialPageRoute(builder: (context) => view),
    );
  }

  // Just Go Back
  static void pop() {
    Navigator.pop(
      AppNavigatorKey.navigatorKey.currentState!.context,
    );
  }
}
