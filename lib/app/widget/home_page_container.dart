import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rootdev/app/constant/app_colors.dart';

class HomePageContainer extends StatelessWidget {
  final String day;
  final String date;
  const HomePageContainer({super.key, required this.day, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: 80.w,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppColors.greyColor.withOpacity(0.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Text(day,style: TextStyle(color: Colors.white),),
        Text(date,style: TextStyle(color: Colors.white),)
      ],),

    );
  }
}
