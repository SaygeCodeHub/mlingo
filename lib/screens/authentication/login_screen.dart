import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_spacing.dart';
import 'package:mlingo/widgets/primary_button.dart';
import '../../configs/spacing.dart';
import '../../utils/constants/string_constants.dart';
import '../../widgets/field_label_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
            alignment: Alignment.center,
            child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.30,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: spacingBetweenTextFieldAndButton),
                      LabelAndFieldWidget(
                          hintText: 'Eg. Johndoe@gmail.com',
                          label: StringConstants.kEmailAddress,
                          onTextFieldChanged: (value) {}),
                      const SizedBox(height: spacingBetweenTextFields),
                      const SizedBox(height: spacingBetweenTextFields),
                      LabelAndFieldWidget(
                          hintText: 'Enter Your Password..',
                          suffixIcon: const Icon(Icons.remove_red_eye),
                          label: StringConstants.kPassword,
                          onTextFieldChanged: (value) {},
                          obscureText: true),
                      const SizedBox(height: spacingBetweenTextFields),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                                checkColor: Colors.white,
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }),
                            const Text(
                              "Remember me",
                              style: TextStyle(color: Colors.black),
                            ),
                            const SizedBox(width: spacing3XHuge),
                            InkWell(
                                splashColor: Colors.white,
                                hoverColor: Colors.white,
                                focusColor: Colors.white,
                                onTap: () {},
                                child: const Text(
                                  "Forgot Password?",
                                  style: TextStyle(color: Colors.blue),
                                ))
                          ]),
                      const SizedBox(height: spacingBetweenTextFields),
                      PrimaryButton(
                          onPressed: () {},
                          buttonTitle: StringConstants.kLogin),
                      const SizedBox(height: spacingBetweenTextFields),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Not Registered Yet? ",
                                style: TextStyle(color: Colors.black)),
                            InkWell(
                                splashColor: Colors.white,
                                hoverColor: Colors.white,
                                focusColor: Colors.white,
                                onTap: () {},
                                child: const Text("Create an Account...",
                                    style: TextStyle(color: Colors.blue)))
                          ]),
                      const SizedBox(height: spacingBetweenTextFields)
                    ]))));
  }
}
