import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'app_constant.dart';

TextStyle textRegularStyle(
    {color = AppColors.blackColor,
    double fontSize = fontSize14,
    fontWeight = FontWeight.w400,
    double? lineHeight}) {
  return TextStyle(
    fontSize: fontSize.sp,
    color: color,
    fontWeight: fontWeight,
    height: lineHeight,
  );
}

TextStyle appbarTextStyle(
    {double fontSize = fontSize20,
    fontWeight = FontWeight.bold,
    color = AppColors.blackColor}) {
  return TextStyle(
    fontSize: fontSize.sp,
    color: color,
    fontWeight: fontWeight,
  );
}

TextStyle tapbarTextStyle(
    {color = AppColors.unSelectedColor,
    double fontSize = fontSize14,
    fontWeight = FontWeight.w400,
    double? lineHeight}) {
  return TextStyle(
    fontSize: fontSize.sp,
    color: color,
    fontWeight: fontWeight,
    height: lineHeight,
  );
}

TextStyle textRegularStyleW600(
    {color = AppColors.blackColor,
    double fontSize = fontSize14,
    fontWeight = FontWeight.w600,
    double? lineHeight}) {
  return TextStyle(
    fontSize: fontSize.sp,
    color: color,
    fontWeight: fontWeight,
    height: lineHeight,
  );
}
