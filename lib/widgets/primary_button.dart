import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_spacing.dart';
import 'package:mlingo/configs/app_theme.dart';
import '../configs/app_color.dart';
import '../configs/app_dimensions.dart';

class PrimaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final double? buttonWidth;
  final ButtonStyle? style;
  final Color? backgroundColor;
  final BorderSide? side;
  final String buttonTitle;
  final IconData? icon;
  final OutlinedBorder? shape;

  const PrimaryButton(
      {super.key,
      required this.onPressed,
      this.buttonWidth,
      this.style,
      this.backgroundColor,
      this.side,
      required this.buttonTitle,
      this.icon,
      this.shape});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: shape ??
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(kCardRadius)),
            backgroundColor: backgroundColor ?? AppColor.mediumOrchid,
            minimumSize:
                Size(buttonWidth ?? double.maxFinite, kElevatedButtonHeight)),
        child: FittedBox(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: spacingXStandard),
            const SizedBox(width: spacingXSmall),
            Text(buttonTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.primaryButtonTextStyle),
          ],
        )));
  }
}
