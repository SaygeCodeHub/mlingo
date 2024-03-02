import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_color.dart';
import 'package:mlingo/configs/app_spacing.dart';
import 'package:mlingo/configs/app_theme.dart';
import 'package:mlingo/screens/login/link_login.dart';
import 'package:mlingo/screens/login/login.dart';
import 'package:mlingo/utils/constants/string_constants.dart';
import 'package:mlingo/widgets/text/custom_button.dart';
import 'package:mlingo/widgets/text/custom_password_field.dart';
import 'package:mlingo/widgets/text/custom_text_field.dart';

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
          title: const Text(StringConstants.kMlingo),
          titleTextStyle: Theme.of(context).textTheme.mlingoAppBarTextStyle,
        ),
        body: Padding(
          padding: const EdgeInsets.all(spacingLarge),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Sign Up to',
                      style: Theme.of(context).textTheme.largestTextStyle),
                  const SizedBox(height: spacingStandard),
                  Text(StringConstants.kMlingo,
                      style: Theme.of(context).textTheme.largeTextStyle),
                  const SizedBox(height: spacingStandard),
                  Text('If you already have an account',
                      style: Theme.of(context).textTheme.smallTextStyle),
                  Row(children: [
                    Text('you can',
                        style: Theme.of(context).textTheme.smallTextStyle),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Login.routeName);
                      },
                      child: Text('Login Here!',
                          style:
                              Theme.of(context).textTheme.textButtonTextStyle),
                    )
                  ])
                ]),
            Column(mainAxisSize: MainAxisSize.min, children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Sign Up",
                        style: Theme.of(context).textTheme.mediumBoldTextStyle),
                    const SizedBox(height: spacingStandard),
                    const CustomTextField(
                      hintText: 'Enter Email',
                    ),
                    const SizedBox(height: spacingStandard),
                    const CustomTextField(
                      hintText: 'Create UserName',
                    ),
                    const SizedBox(height: spacingStandard),
                    const CustomTextField(
                      hintText: 'Contact Number',
                    ),
                    const SizedBox(height: spacingStandard),
                    const CustomPasswordField(
                      hintText: 'Password',
                    ),
                    const SizedBox(height: spacingStandard),
                    const CustomPasswordField(
                      hintText: 'Confirm Password',
                    ),
                    const SizedBox(height: spacingStandard),
                    CustomButton(
                        hintText: 'Register',
                        onPressed: () {
                          Navigator.pushNamed(context, Login.routeName);
                        })
                  ]),
              const LinkLogin()
            ]),
          ]),
        ));
  }
}
