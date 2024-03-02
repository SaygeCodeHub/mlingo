import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_color.dart';
import 'package:mlingo/configs/app_dimensions.dart';

class CustomPasswordField extends StatefulWidget {
  final String hintText;

  const CustomPasswordField({
    super.key,
    required this.hintText,
  });

  @override
  CustomPasswordFieldState createState() => CustomPasswordFieldState();
}

class CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      child: TextField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(kCardRadius))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.darkergrey)),
          fillColor: AppColor.faintBlue,
          filled: true,
          hintText: widget.hintText,
          hintStyle: const TextStyle(
              fontFamily: "Archivo",
              letterSpacing: 0.8,
              color: AppColor.lightestBlack,
              fontSize: 12,
              fontWeight: FontWeight.w300),
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              color: _obscureText ? AppColor.xLightestBlack : Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
        ),
      ),
    );
  }
}
