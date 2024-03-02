import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_dimensions.dart';
import 'package:mlingo/configs/app_spacing.dart';
import 'package:mlingo/configs/app_theme.dart';

class LinkLogin extends StatelessWidget {
  const LinkLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: spacingLarge),
        Text(
          'or continue with',
          style: Theme.of(context).textTheme.xSmallTextStyle,
        ),
        const SizedBox(height: spacingLarge),
        const Row(mainAxisSize: MainAxisSize.min, children: [
          Padding(
            padding: EdgeInsets.only(left: spacingSmall, right: spacingSmall),
            child: Image(
              image: AssetImage('assets/images/face.png'),
              width: kFaceBookGoogleIconsSize,
              height: kFaceBookGoogleIconsSize,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: spacingSmall, right: spacingSmall),
            child: Image(
              image: AssetImage('assets/images/apple.png'),
              width: kAppleIconSize,
              height: kAppleIconSize,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: spacingSmall, right: spacingSmall),
            child: Image(
              image: AssetImage('assets/images/google.png'),
              width: kFaceBookGoogleIconsSize,
              height: kFaceBookGoogleIconsSize,
            ),
          ),
        ]),
      ],
    );
  }
}
