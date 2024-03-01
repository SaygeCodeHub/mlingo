import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_color.dart';
import 'package:mlingo/configs/app_dimensions.dart';
import 'package:mlingo/screens/login/registeration.dart';
import 'package:mlingo/widgets/text/login_button.dart';
import 'package:mlingo/widgets/text/login_passfield.dart';
import 'package:mlingo/widgets/text/login_textfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  static const routeName = 'Login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(kDashboardHorizontalPadding),
        child: Row(
          children: [
            const Column(
              children: [
                Text(
                  "Your Logo",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kregisterpadding, vertical: kverticalpadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sign Up to ',
                    style: TextStyle(
                      fontSize: ksignupfont,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Lorem lpsum is simply',
                    style: TextStyle(
                      fontSize: ksizebox,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  const SizedBox(height: ksizebox),
                  const Text("if you haven't Registed yet "),
                  Row(
                    children: [
                      const Text('you can '),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Registration.routeName);
                        },
                        child: const Text(
                          'Register here',
                          style: TextStyle(
                            color: AppColor.deepPurple,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: ksizeboxx),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(kleftpadding, kCircularRadius,
                      krightpadding, kCircularRadius),
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: kDashboardHorizontalPadding,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: kDashboardHorizontalPadding),
                const MyTextField(
                  hintText: 'Enter email or User Name',
                ),
                const SizedBox(height: kDashboardHorizontalPadding),
                const MyPassField(
                  hintText: ' password',
                ),
                const SizedBox(
                  height: kDashboardHorizontalPadding,
                ),
                const Text(
                  'Forgot password ?',
                  style: TextStyle(
                    color: AppColor.boldGrey,
                    fontSize: 11,
                  ),
                ),
                const SizedBox(height: ksizebox),
                MyButton(
                  hintText: 'Login',
                  onPressed: () {},
                ),
                const SizedBox(height: kDashboardHorizontalPadding),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: kAddButtonWidth),
                  child: Text(
                    'or continue with',
                    style: TextStyle(color: AppColor.boldGrey),
                  ),
                ),
                const SizedBox(height: ksizeboxxx),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: kimagepadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(kGeneralSizedBoxHeight),
                        child: Image(
                          image: AssetImage('assets/images/face.png'),
                          width: ksignupfont,
                          height: ksignupfont,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(kVerticalPadding),
                        child: Image(
                          image: AssetImage('assets/images/apple.png'),
                          width: ksizebox,
                          height: ksizebox,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(kGeneralSizedBoxHeight),
                        child: Image(
                          image: AssetImage('assets/images/google.png'),
                          width: ksignupfont,
                          height: ksignupfont,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
