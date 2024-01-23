import 'package:flutter/material.dart';
import '../../../configs/app_color.dart';
import '../../../configs/app_spacing.dart';
import '../../../utils/constants/string_constants.dart';
import '../../../widgets/primary_button.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PrimaryButton(
              onPressed: () {}, buttonTitle: StringConstants.kRegister),
          InkWell(
              onTap: () {},
              child: const Padding(
                  padding: EdgeInsets.only(top: spacingStandard),
                  child: Text('Already have an account? Sign in!',
                      style: TextStyle(color: AppColor.orange))))
        ]);
  }
}
