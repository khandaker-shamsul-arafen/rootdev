import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rootdev/app/constant/app_colors.dart';

class HomePageContainer extends StatelessWidget {
  final String day;
  final String date;
  final bool selected;

  const HomePageContainer(
      {super.key,
      required this.day,
      required this.date,
      this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 80.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: (selected)
            ? AppColors.whiteColor
            : AppColors.greyColor.withOpacity(0.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            day,
            style: (selected)
                ? TextStyle(color: Colors.black, fontSize: 14.sp)
                : TextStyle(color: Colors.white, fontSize: 14.sp),
          ),
          Text(
            date,
            style: (selected)
                ? TextStyle(color: Colors.black, fontSize: 14.sp)
                : TextStyle(color: Colors.white, fontSize: 14.sp),
          )
        ],
      ),
    );
  }
}
