import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_save/src/core/config/theme/colors.dart';

extension ContextExt on BuildContext {
  // HELP ME GENERATE EXTESNIONS FOR TEXTSTYLES WHICH I WILL LINK TO THE TEXTSTYLES FILE

  Color get primaryColor => AppColors.primaryColor;
  Color get bgColor => Theme.of(this).scaffoldBackgroundColor;

  TextStyle get normal12 => Theme.of(this).textTheme.bodySmall!;
  TextStyle get normal14 => Theme.of(this).textTheme.bodyMedium!;
  TextStyle get normal16 => Theme.of(this).textTheme.bodyLarge!;
  TextStyle get normal20 => Theme.of(this).textTheme.titleSmall!;
  TextStyle get normal24 => Theme.of(this).textTheme.titleMedium!;
  TextStyle get normal28 => Theme.of(this).textTheme.titleLarge!;
  TextStyle get medium12 => Theme.of(this).textTheme.displaySmall!;
  TextStyle get medium14 => Theme.of(this).textTheme.displayMedium!;
  TextStyle get medium16 => Theme.of(this).textTheme.displayLarge!;
  TextStyle get medium20 => Theme.of(this).textTheme.labelSmall!;
  TextStyle get medium24 => Theme.of(this).textTheme.labelMedium!;
  TextStyle get medium28 => Theme.of(this).textTheme.labelLarge!;
  TextStyle get thick24 => Theme.of(this).textTheme.headlineSmall!;
}

extension Navigation on BuildContext {
  push<T extends Object>(Widget page) {
    return Navigator.push(
      this,
      CupertinoPageRoute(builder: (context) => page),
    );
  }

  pop() {
    return Navigator.pop(this);
  }

  replace<T extends Object>(Widget page) {
    return Navigator.pushReplacement(
      this,
      CupertinoPageRoute(builder: (context) => page),
    );
  }

  go<T extends Object>(Widget page) {
    return Navigator.pushAndRemoveUntil(
      this,
      CupertinoPageRoute(builder: (context) => page),
      (Route<dynamic> route) => route is! T,
    );
  }
}
