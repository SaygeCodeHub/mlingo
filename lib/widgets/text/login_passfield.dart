import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_color.dart';

class MyPassField extends StatefulWidget {
  final String hintText;

  const MyPassField({
    super.key,
    required this.hintText,
  });

  @override
  MyPassFieldState createState() => MyPassFieldState();
}

class MyPassFieldState extends State<MyPassField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      child: TextField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.darkergrey),
          ), fillColor: AppColor.lightpurple,
          filled: true,
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: AppColor.lowpurple,
            fontSize: 13,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              color: _obscureText ? Colors.grey : Colors.blue,
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
