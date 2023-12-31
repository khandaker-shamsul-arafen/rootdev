import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:rootdev/app/constant/app_colors.dart';
import 'package:rootdev/app/constant/app_widgets.dart';

import '../constant/app_style.dart';

class AllLeaguesWidget extends StatelessWidget {
  final String ligueImage;
  final String ligueText;
  final String ligueCountry;
  final String teamImage1;
  final String teamImage2;
  final String teamName1;
  final String teamName2;
  final String state;
  final String score1;
  final String score2;

  const AllLeaguesWidget({
    super.key,
    required this.ligueImage,
    required this.ligueText,
    required this.ligueCountry,
    required this.teamImage1,
    required this.teamImage2,
    required this.teamName1,
    required this.teamName2,
    required this.state,
    required this.score1,
    required this.score2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Get.width,
          color: AppColors.containerColor.withOpacity(0.1),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.0.h,
                    bottom: 10.0.h,
                    left: 15.w,
                  ),
                  child: Container(
                    height: 45.h,
                    width: 45.w,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      image: DecorationImage(
                        image: NetworkImage(ligueImage),
                        fit: BoxFit.contain,
                      ),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                          width: 1,
                          color: AppColors.greyColor.withOpacity(0.4)),
                    ),
                  ),
                ),
                AppWidgets().gapW10(),
                Container(
                  height: 60.h,
                  width: Get.width,
                  color: Colors.white.withOpacity(0.1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ligueText,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.sp),
                          ),
                          Text("| 1st PHASE")
                        ],
                      ),
                      Text(
                        ligueCountry,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 3,
          width: Get.width,
          color: AppColors.whiteColor,
        ),
        SizedBox(
          width: Get.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 3.0.w),
                  child: Container(
                    width: Get.width * 0.38,
                    height: 65.h,
                    color: AppColors.containerColor.withOpacity(0.1),
                    child: Center(
                      child: ListTile(
                        dense: true,
                        contentPadding:
                            const EdgeInsets.only(left: 0.0, right: 0.0),
                        leading: Container(
                          height: 60.h,
                          width: Get.width * 0.1,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(teamImage1))),
                        ),
                        title: Text(
                          teamName1,
                          style: textRegularStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
                AppWidgets().gapW(8),
                RotationTransition(
                  turns: const AlwaysStoppedAnimation(-4 / 360),
                  child: Container(
                    height: 65.h,
                    width: Get.width * 0.18,
                    color: AppColors.bottomBackGroundColor,
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(4 / 360),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "$score1 - $score2",
                            style: textRegularStyleW600(
                                color: AppColors.whiteColor, fontSize: 18),
                          ),
                          Container(
                            color: AppColors.greyColor.withOpacity(0.9),
                            child: Text(
                              state,
                              style: textRegularStyleW600(
                                  color: AppColors.whiteColor, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                AppWidgets().gapW(8),
                Container(
                  width: Get.width * 0.48,
                  color: AppColors.containerColor.withOpacity(0.1),
                  height: 65.h,
                  child: Center(
                    child: ListTile(
                      dense: true,
                      contentPadding:
                          const EdgeInsets.only(left: 0.0, right: 0.0),
                      leading: Container(
                        height: 65.h,
                        width: Get.width * 0.1,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(teamImage2),
                          ),
                        ),
                      ),
                      title: Text(
                        teamName2,
                        style: textRegularStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      trailing: const Icon(
                        Icons.keyboard_arrow_down,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
