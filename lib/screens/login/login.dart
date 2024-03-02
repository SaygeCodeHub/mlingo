import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_color.dart';
import 'package:mlingo/configs/app_spacing.dart';
import 'package:mlingo/configs/app_theme.dart';
import 'package:mlingo/screens/login/login_mobile_screen.dart';
import 'package:mlingo/screens/login/login_web_screen.dart';
import 'package:mlingo/widgets/responsive_layout.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  static const routeName = 'Login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: spacingHuge,
        title: const Text("Mlingo"),
        titleTextStyle: Theme.of(context).textTheme.mlingoAppBarTextStyle,
      ),
      body: const Expanded(
        child: ResponsiveLayout(
            desktopBody: LoginWebScreen(), mobileBody: LoginMobileScreen()),
      ),
    );
  }
}
