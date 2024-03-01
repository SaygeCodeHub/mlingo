import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_spacing.dart';
import 'package:mlingo/configs/app_theme.dart';
import 'package:mlingo/screens/dashboard/dashboard_screen.dart';
import 'package:mlingo/utils/constants/string_constants.dart';

class AddKeyScreen extends StatelessWidget {
  const AddKeyScreen({super.key});

  static const routeName = 'AddKeyScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          Text(StringConstants.kCreateFirstKey,
              style: Theme.of(context).textTheme.createKeyStyle),
          const SizedBox(height: spacingLarge),
          Text(StringConstants.kKeyBrief,
              style: Theme.of(context).textTheme.keyBriefStyle),
          const SizedBox(height: spacingLarge),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(spacingXXXXXHuge, spacingXHuge)),
              onPressed: () {
                Navigator.pushNamed(context, DashboardScreen.routeName);
              },
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add),
                    SizedBox(width: spacingXSmaller),
                    Text(StringConstants.kaddKey)
                  ])),
        ])));
  }
}
