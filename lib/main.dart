import 'package:flutter/material.dart';
import 'package:mlingo/configs/new_app_theme.dart';
import 'package:mlingo/screens/dashboard/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: newAppTheme,
        debugShowCheckedModeBanner: false,
        home: const DashboardScreen());
  }
}
