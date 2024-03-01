import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_color.dart';

class MyTextField extends StatelessWidget {
  final String hintText;

  const MyTextField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:
          MediaQuery.of(context).size.width * 0.2, // Adjust the width as needed
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.darkgrey),
          ),
          fillColor: AppColor.lightpurple,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: AppColor.lowpurple,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
