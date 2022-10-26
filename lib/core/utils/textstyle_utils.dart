import 'package:flutter/material.dart';

import 'app_strings.dart';
import 'fonts_utils.dart';

class TexStyleUtils {
  static TextStyle textStyleblackBold({
    double size = FontSizeUtils.s14,
    double height = 1,
  }) {
    return TextStyle(
        color: Colors.black,
        fontSize: size,
        fontWeight: FontWeight.bold,
        height: height);
  }

  static TextStyle textStyleColor(
      {double size = FontSizeUtils.s14,
      Color? color,
      double height = 1,
      FontWeight? fontWeight}) {
    return TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        height: height,
        fontFamily: AppStrings.fontFamily);
  }
}
