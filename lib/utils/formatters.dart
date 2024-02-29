import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_color.dart';

Color getColorFromStatus(String text) {
  switch (text) {
    case '1':
    case 'Active':
      return AppColor.successGreen;
    case '2':
    case 'Draft':
      return AppColor.lightBlue;
    default:
      return Colors.grey;
  }
}