import 'package:flutter/material.dart';
import 'app_color.dart';
import 'app_dimensions.dart';

ThemeData newAppTheme = ThemeData(
    useMaterial3: false,
    colorScheme: colorScheme,
    fontFamily: 'PT_Sans',
    splashColor: AppColor.transparent,
    hoverColor: AppColor.transparent,
    highlightColor: AppColor.transparent,
    focusColor: AppColor.transparent,
    appBarTheme: appBarTheme,
    scaffoldBackgroundColor: AppColor.grey,
    inputDecorationTheme: inputDecorationTheme,
    iconTheme: iconThemeData,
    drawerTheme: drawerThemeData);

AppBarTheme appBarTheme = const AppBarTheme(
    color: AppColor.white,
    elevation: 0,
    centerTitle: false,
    iconTheme: IconThemeData(color: AppColor.darkBlue),
    actionsIconTheme: IconThemeData(color: AppColor.orange));
ColorScheme colorScheme = const ColorScheme.light(
  surface: AppColor.white,
  background: AppColor.white,
  primary: AppColor.orange,
);

DrawerThemeData drawerThemeData =
    const DrawerThemeData(backgroundColor: AppColor.white, elevation: 0.0);

IconThemeData iconThemeData = const IconThemeData(color: AppColor.darkBlue);
InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(kCircularRadius),
      borderSide: const BorderSide(color: AppColor.grey),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(kCircularRadius),
      borderSide: const BorderSide(color: AppColor.white),
    ),
    filled: true,
    isDense: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
    fillColor: AppColor.lightGrey,
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kCircularRadius),
        borderSide: const BorderSide(color: AppColor.grey)),
    border: const OutlineInputBorder(),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kCircularRadius),
        borderSide: const BorderSide(color: AppColor.grey)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kCircularRadius),
        borderSide: const BorderSide(color: AppColor.grey)),
    hintStyle: const TextStyle(
        fontSize: 13, color: AppColor.grey, fontWeight: FontWeight.w500));

extension AppTextTheme on TextTheme {
  TextStyle get labelTextStyle {
    return const TextStyle(
        fontSize: 16, color: AppColor.black, fontWeight: FontWeight.w600);
  }

  TextStyle get primaryButtonTextStyle {
    return const TextStyle(
        fontSize: 16, color: AppColor.white, fontWeight: FontWeight.w700);
  }

  TextStyle get moduleHeadingTextStyle {
    return const TextStyle(
        fontSize: 18, color: AppColor.darkBlue, fontWeight: FontWeight.w600);
  }

  TextStyle get churnPathTextStyle {
    return const TextStyle(fontSize: 12, color: AppColor.lightBlue);
  }

  TextStyle get errorTitleTextStyle {
    return const TextStyle(
        fontSize: 18, color: AppColor.black, fontWeight: FontWeight.w800);
  }

  TextStyle get errorSubtitleTextStyle {
    return const TextStyle(
        fontSize: 12, color: AppColor.darkBlue, fontWeight: FontWeight.w300);
  }

  TextStyle get cardMobileValueTextStyle {
    return const TextStyle(
        fontSize: 14, color: AppColor.darkBlue, fontWeight: FontWeight.w800);
  }

  TextStyle get cardMobileHeadingTextStyle {
    return const TextStyle(
        fontSize: 12, color: AppColor.darkBlue, fontWeight: FontWeight.w600);
  }

  TextStyle get userNameTextStyle {
    return const TextStyle(
        fontSize: 16, color: AppColor.black, fontWeight: FontWeight.w500);
  }

  TextStyle get authenticationScreenTextStyles {
    return const TextStyle(
        color: AppColor.black, fontWeight: FontWeight.w700, fontSize: 15);
  }

  TextStyle get dataTableHeadingTextStyle {
    return const TextStyle(
        fontSize: 15, color: AppColor.darkBlue, fontWeight: FontWeight.bold);
  }

  TextStyle get dataTableNameTextStyle {
    return const TextStyle(
        fontSize: 20, color: AppColor.darkBlue, fontWeight: FontWeight.bold);
  }

  TextStyle get tableDataTextStyle {
    return const TextStyle(
        color: Colors.black54, fontWeight: FontWeight.w700, fontSize: 13);
  }

  TextStyle get drawerModuleTextStyle {
    return const TextStyle(
        fontSize: 14, color: AppColor.black, fontWeight: FontWeight.w500);
  }

  TextStyle get buttonTextStyle {
    return const TextStyle(
        fontSize: 18, color: AppColor.white, fontWeight: FontWeight.w700);
  }

  TextStyle get slideActionTextStyle {
    return const TextStyle(
        fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black38);
  }
}
