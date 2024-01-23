import 'package:flutter/material.dart';

import '../configs/app_color.dart';
import '../configs/app_spacing.dart';
import 'text/label_text_widget.dart';


class LabelAndFieldWidget extends StatelessWidget {
  final String? label;
  final String? hintText;
  final void Function(String)? onTextFieldChanged;
  final bool? readOnly;
  final bool? enabled;
  final TextEditingController? controller;
  final bool? obscureText;
  final Widget? suffix;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? autofocus;
  final dynamic initialValue;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry? contentPadding;

  const LabelAndFieldWidget({
    super.key,
    this.label,
    this.hintText,
    this.onTextFieldChanged,
    this.readOnly,
    this.enabled,
    this.controller,
    this.obscureText,
    this.suffix,
    this.prefixIcon,
    this.suffixIcon,
    this.autofocus,
    this.initialValue,
    this.keyboardType,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    if (initialValue != null && controller.text.isEmpty) {
      controller.text = initialValue.toString();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) LabelTextWidget(label: label),
        if (label != null) const SizedBox(height: spacingMedium),
        SizedBox(
          child: TextFormField(
              obscureText: obscureText ?? false,
              cursorColor: AppColor.orange,
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12), //<-- SEE HERE
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12), //<-- SEE HERE
                ),
                suffix: suffix,
                hintText: hintText,
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
                counterText: "",
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15, horizontal: 15), // Adjust padding as needed
              ),
              validator: (_) {
                return null;
              },
              readOnly: readOnly ?? false,
              controller: controller,
              onChanged: onTextFieldChanged,
              enabled: enabled ?? true,
              autofocus: autofocus ?? false,
              keyboardType: keyboardType,
              textAlign: TextAlign.start),
        ),
        const SizedBox(height: spacingXSmall)
      ],
    );
  }
}
