import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_route.dart';
import 'package:mlingo/configs/new_app_theme.dart';
import 'package:mlingo/screens/login/registeration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: AppRoutes.routes,
        theme: newAppTheme,
        debugShowCheckedModeBanner: false,
        home: const Registration());
  }
}
