import 'package:flutter/material.dart';
import 'package:mlingo/widgets/text/custom_button.dart';
import 'package:mlingo/widgets/text/custom_password_field.dart';
import 'package:mlingo/widgets/text/custom_text_field.dart';
import 'package:mlingo/screens/login/link_login.dart';
import 'package:mlingo/screens/login/login.dart';
import 'package:mlingo/configs/app_spacing.dart';
import 'package:mlingo/configs/app_theme.dart';

class RegistrationMobileScreen extends StatelessWidget {
  const RegistrationMobileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
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
            }),
        const LinkLogin(),
        const SizedBox(height: spacingStandard),
        Text('If you already have an account',
            style: Theme.of(context).textTheme.smallTextStyle),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('you can', style: Theme.of(context).textTheme.smallTextStyle),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Login.routeName);
            },
            child: Text('Login Here!',
                style: Theme.of(context).textTheme.textButtonTextStyle),
          )
        ])
      ]),
    );
  }
}
