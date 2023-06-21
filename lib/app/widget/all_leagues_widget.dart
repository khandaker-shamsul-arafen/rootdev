import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:rootdev/app/constant/app_colors.dart';
import 'package:rootdev/app/constant/app_widgets.dart';

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

  // const AllLeaguesWidget({super.key, required this.ligueText, required this.ligueImage,});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Get.width,
          color: Color(0xFFFFFFFFE4),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.0.h,
                    bottom: 10.0.h,
                    left: 10.w,
                  ),
                  child: Container(
                    height: 60.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                          width: 1,
                          color: AppColors.greyColor.withOpacity(0.4)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('$ligueImage'),
                            fit: BoxFit.contain,
                          ),
                          // color: Colors.amberAccent,
                        ),
                      ),
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
                        style: TextStyle(
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
          height: 12,
          width: Get.width,
          color: Colors.white,
        ),
        Container(
          width: Get.width,
          //     color: Colors.brown,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: Get.width * 0.38,
                  // color: Colors.brown,
                  height: 110,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 60.h,
                        width: Get.width * 0.1,
                        decoration: BoxDecoration(
                          //   color: Colors.blue,
                          image: DecorationImage(
                            image: NetworkImage(teamImage1),
                            fit: BoxFit.contain,
                          ),
                          // color: Colors.amberAccent,
                        ),
                      ),
                      AppWidgets().gapW(8),
                      Expanded(
                        child: Text(teamName1,
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18.sp)),
                      ),
                    ],
                  ),
                ),
                AppWidgets().gapW10(),
                RotationTransition(
                  turns: AlwaysStoppedAnimation(-5 / 360),
                  child: Container(
                    height: 80.h,
                    width: Get.width * 0.2,
                    color: Colors.grey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("$score1 - $score2"),
                        Text(state),
                      ],
                    ),
                  ),
                ),
                AppWidgets().gapW16(),
                Container(
                  width: Get.width * 0.43,
                  // color: Colors.brown,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 60.h,
                        width: Get.width * 0.1,
                        decoration: BoxDecoration(
                          //   color: Colors.blue,
                          image: DecorationImage(
                            image: NetworkImage(teamImage2),
                            fit: BoxFit.contain,
                          ),
                          // color: Colors.amberAccent,
                        ),
                      ),
                      AppWidgets().gapW(8),
                      Expanded(
                        child: Text(
                          teamName2,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18.sp),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                      )
                    ],
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
