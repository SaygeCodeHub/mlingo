// import 'package:flutter/material.dart';
// import '../screens/authentication/auhentication_screen.dart';
// import '../screens/authentication/forgot_password_screen.dart';
// import '../screens/authentication/register_screen.dart';
//
// class AppRoutes {
//   static Route routes(RouteSettings settings) {
//     switch (settings.name) {
//       case AuthenticationScreen.routeName:
//         return _createRoute(AuthenticationScreen());
//       case RegisterScreen.routeName:
//         return _createRoute(const RegisterScreen());
//       case ForgotPasswordScreen.routeName:
//         return _createRoute(const ForgotPasswordScreen());
//       default:
//         return _createRoute(AuthenticationScreen());
//     }
//   }
//
//   static Route<dynamic> _createRoute(Widget view) {
//     return PageRouteBuilder(
//         pageBuilder: (context, animation, secondaryAnimation) => view,
//         transitionsBuilder: (context, animation, secondaryAnimation, child) {
//           const begin = Offset(0.0, 0.0);
//           const end = Offset.zero;
//           const curve = Curves.ease;
//
//           var tween =
//               Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//
//           return SlideTransition(
//               position: animation.drive(tween), child: child);
//         });
//   }
// }
