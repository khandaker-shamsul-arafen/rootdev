import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidgets {
  Widget gapH(
    double height,
  ) {
    return SizedBox(
      height: height.h,
    );
  }

  Widget gapW(double width) {
    return SizedBox(
      width: width.w,
    );
  }

  Widget gapW10() {
    return SizedBox(
      width: 10.w,
    );
  }

  Widget gapH10() {
    return SizedBox(
      height: 10.h,
    );
  }

  Widget gapH8() {
    return SizedBox(
      height: 8.h,
    );
  }

  Widget gapW8() {
    return SizedBox(
      width: 8.w,
    );
  }

  Widget gapH16() {
    return SizedBox(
      height: 16.h,
    );
  }

  Widget gapW16() {
    return SizedBox(
      width: 16.w,
    );
  }

  Widget gapW12() {
    return SizedBox(
      width: 12.h,
    );
  }

  Widget gapH12() {
    return SizedBox(
      height: 12.h,
    );
  }

  Widget gapW24() {
    return const SizedBox(
      width: 24,
    );
  }

  Widget gapH24() {
    return SizedBox(
      height: 24.h,
    );
  }
}
