import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_color.dart';
import 'package:mlingo/configs/app_spacing.dart';
import 'package:mlingo/configs/app_theme.dart';
import 'package:mlingo/screens/addKey/add_key_screen.dart';
import 'package:mlingo/screens/login/link_login.dart';
import 'package:mlingo/screens/login/registeration.dart';
import 'package:mlingo/utils/constants/string_constants.dart';
import 'package:mlingo/widgets/text/custom_button.dart';
import 'package:mlingo/widgets/text/custom_password_field.dart';
import 'package:mlingo/widgets/text/custom_text_field.dart';

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
        title: const Text(StringConstants.kMlingo),
        titleTextStyle: Theme.of(context).textTheme.mlingoAppBarTextStyle,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(spacingLarge),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Welcome to',
                        style: Theme.of(context).textTheme.largestTextStyle),
                    const SizedBox(height: spacingStandard),
                    Text(StringConstants.kMlingo,
                        style: Theme.of(context).textTheme.largeTextStyle),
                    const SizedBox(height: spacingStandard),
                    Text("If you don't have an account yet",
                        style: Theme.of(context).textTheme.smallTextStyle),
                    Row(children: [
                      Text('you can',
                          style: Theme.of(context).textTheme.smallTextStyle),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Registration.routeName);
                        },
                        child: Text('Register here',
                            style:
                            Theme.of(context).textTheme.textButtonTextStyle),
                      )
                    ]),
                  ]),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sign In",
                          style: Theme.of(context).textTheme.mediumBoldTextStyle),
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
                      )
                    ],
                  ),
                  const LinkLogin(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
