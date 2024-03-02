import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_color.dart';
import 'package:mlingo/configs/app_dimensions.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;

  const CustomTextField({
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
              borderSide: BorderSide(color: AppColor.transparent),
              borderRadius: BorderRadius.all(Radius.circular(kCardRadius))),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.darkergrey),
          ),
          fillColor: AppColor.faintBlue,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: "Archivo",
            letterSpacing: 0.8,
            color: AppColor.lightestBlack,
            fontSize: 12,
            fontWeight: FontWeight.w300
          ),
        ),
      ),
    );
  }
}
