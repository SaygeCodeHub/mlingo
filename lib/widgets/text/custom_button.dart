import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_color.dart';
import 'package:mlingo/configs/app_dimensions.dart';

class CustomButton extends StatelessWidget {
  final String hintText;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.hintText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * kloginbtnsize,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(kDashboardHorizontalPadding),
          backgroundColor: AppColor.xDeepBlue,
          shadowColor: AppColor.xDeepBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kVerticalPadding),
          ),
        ),
        child: Text(
          hintText,
          style: const TextStyle(color: AppColor.white),
        ),
      ),
    );
  }
}
