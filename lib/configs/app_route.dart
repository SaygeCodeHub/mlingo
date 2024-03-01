import 'package:flutter/material.dart';
import 'package:mlingo/screens/addKey/add_key_screen.dart';
import 'package:mlingo/screens/dashboard/dashboard_screen.dart';

class AppRoutes {
  static Route routes(RouteSettings settings) {
    switch (settings.name) {
      case DashboardScreen.routeName:
        return _createRoute(const DashboardScreen());
      default:
        return _createRoute(const AddKeyScreen());
    }
  }

  static Route<dynamic> _createRoute(Widget view) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => view,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
              position: animation.drive(tween), child: child);
        });
  }
}
