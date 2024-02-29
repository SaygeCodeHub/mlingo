import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_theme.dart';
import '../../../configs/app_color.dart';
import '../../../configs/app_dimensions.dart';

class LanguageField extends StatelessWidget {
  final String text;
  final String hintText;

  const LanguageField({
    super.key,
    required this.hintText,
    required this.text,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded( flex: 5,
          child: Text(text,
              style: Theme.of(context).textTheme
                  .textFieldLabelTextStyle),
        ),
        const SizedBox(width: 20),
        Expanded( flex: 10,
          child: TextFormField(
            decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.all(kTextFormFieldPadding),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12)),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12)),
                hintText: hintText,
                hintStyle: const TextStyle(fontSize: kHintTextSize, color: AppColor.black)),
          ),
        ),
      ],
    );
  }
}
