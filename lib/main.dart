import 'package:flutter/material.dart';
import 'package:student_management_bloc_starter/app.dart';
import 'package:student_management_bloc_starter/core/service_locator/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setupServiceLocator();

  runApp(
    App(),
  );
}
