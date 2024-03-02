import 'package:flutter/material.dart';
import 'package:mlingo/widgets/text/custom_button.dart';
import 'package:mlingo/widgets/text/custom_password_field.dart';
import 'package:mlingo/widgets/text/custom_text_field.dart';
import 'package:mlingo/screens/login/registration/registeration.dart';
import 'package:mlingo/screens/addKey/add_key_screen.dart';
import 'package:mlingo/screens/login/link_login.dart';
import 'package:mlingo/configs/app_spacing.dart';
import 'package:mlingo/configs/app_theme.dart';

class LoginMobileScreen extends StatelessWidget {
  const LoginMobileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Text("Sign In", style: Theme.of(context).textTheme.mediumBoldTextStyle),
      const SizedBox(height: spacingStandard),
      const CustomTextField(
        hintText: 'Enter Email or UserName',
      ),
      const SizedBox(height: spacingStandard),
      const CustomPasswordField(
        hintText: ' Password',
      ),
      const SizedBox(height: spacingStandard),
      Text(
        'Forgot Password ?',
        style: Theme.of(context).textTheme.xSmallTextStyle,
      ),
      const SizedBox(height: spacingLarge),
      CustomButton(
        hintText: 'Login',
        onPressed: () {
          Navigator.pushNamed(context, AddKeyScreen.routeName);
        },
      ),
      const LinkLogin(),
      const SizedBox(height: spacingLarge),
      Text("If you don't have an account yet",
          style: Theme.of(context).textTheme.smallTextStyle),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('you can', style: Theme.of(context).textTheme.smallTextStyle),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, Registration.routeName);
          },
          child: Text('Register here',
              style: Theme.of(context).textTheme.textButtonTextStyle),
        )
      ]),
    ]));
  }
}
