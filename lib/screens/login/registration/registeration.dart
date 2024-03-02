import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_color.dart';
import 'package:mlingo/configs/app_spacing.dart';
import 'package:mlingo/configs/app_theme.dart';
import 'package:mlingo/screens/login/registration/registration_mobile_screen.dart';
import 'package:mlingo/screens/login/registration/registration_web_screen.dart';
import 'package:mlingo/widgets/responsive_layout.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  static const routeName = 'Registration';

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
            desktopBody: RegistrationWebScreen(),
            mobileBody: RegistrationMobileScreen(),
          ),
        ));
  }
}
