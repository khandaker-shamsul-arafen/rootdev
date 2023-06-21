import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:rootdev/app/constant/app_colors.dart';
import 'package:rootdev/app/constant/app_widgets.dart';

import '../../../constant/app_style.dart';
import '../../../widget/all_leagues_widget.dart';
import '../../../widget/drawer.dart';
import '../../../widget/home_page_container.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: controller.key, // set it here
        drawer: const CustomizeDrawer(),
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "TURBO",
                style: appbarTextStyle(),
              ),
              AppWidgets().gapW8(),
              RichText(
                text: TextSpan(
                  text: 'F',
                  style: appbarTextStyle(),
                  children: [
                    TextSpan(
                      text: 'OO',
                      style: appbarTextStyle(color: AppColors.selectedColor),
                    ),
                    TextSpan(
                      text: 'TBALL',
                      style: appbarTextStyle(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          centerTitle: true,
          // Center align the title
          actions: [
            IconButton(
              icon: const Icon(
                Icons.sort,
                color: Colors.black,
                size: 35,
              ),
              onPressed: () {
                controller.key.currentState?.openDrawer();
              },
            ),
          ],
        ),

        body: Column(
          children: [
            //AppWidgets().gapH16(),
            Stack(
              children: [
                Container(
                  height: 95.h,
                  width: Get.width,
                  color: AppColors.bottomBackGroundColor,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 18.0.h, left: 10.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const HomePageContainer(
                            day: 'FRI',
                            date: 'JUN 16',
                          ),
                          AppWidgets().gapW10(),
                          const HomePageContainer(
                            day: 'FRI',
                            date: 'JUN 16',
                            selected: true,
                          ),
                          AppWidgets().gapW10(),
                          const HomePageContainer(
                            day: 'TODAY',
                            date: 'JUN 16',
                          ),
                          AppWidgets().gapW10(),
                          const Icon(
                            Icons.calendar_month_sharp,
                            size: 38,
                            color: AppColors.whiteColor,
                          ),
                          AppWidgets().gapW16(),
                          Container(
                            height: Get.height * 0.05,
                            width: 150.w,
                            margin: EdgeInsets.only(right: 4.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: AppColors.greyColor.withOpacity(0.5),
                            ),
                            child: Center(
                              child: ListTile(
                                contentPadding: EdgeInsets.only(
                                  left: 9.w,
                                  right: 5.w,
                                  top: 0,
                                  bottom: 0,
                                ),
                                dense: true,
                                leading: Padding(
                                  padding: EdgeInsets.only(bottom: 8.0.h),
                                  child: const Text(
                                    "ALL LEAGUES",
                                    style:
                                        TextStyle(color: AppColors.whiteColor),
                                  ),
                                ),
                                trailing: Padding(
                                  padding: EdgeInsets.only(bottom: 8.0.h),
                                  child: const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 80.w,
                  top: -20.h,
                  child: RotationTransition(
                    turns: const AlwaysStoppedAnimation(-13 / 360),
                    child: Container(
                      height: 50.h,
                      width: 65.w,
                      color: AppColors.whiteColor,
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: RotationTransition(
                              turns: const AlwaysStoppedAnimation(13 / 360),
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 4.0),
                                child: Text(
                                  'LIVE',
                                  style: textRegularStyleW600(
                                      color: Colors.red, fontSize: 22),
                                ),
                              ))),
                    ),
                  ),
                )
              ],
            ),
            AppWidgets().gapH(3),
            SizedBox(
              height: Get.height * 0.703,
              width: Get.width,
              child: Obx(
                () => ListView.separated(
                  itemCount: controller.fixtureDetails.value?.data?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    // Build the item at the specified index
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: AllLeaguesWidget(
                        ligueImage:
                            '${controller.fixtureDetails.value!.data?[index].league?.imagePath}',
                        ligueText:
                            '${controller.fixtureDetails.value!.data?[index].league?.name}',
                        ligueCountry:
                            '${controller.fixtureDetails.value!.data?[index].league?.country?.name}',
                        teamImage1:
                            '${controller.fixtureDetails.value!.data?[index].participants?[0].imagePath}',
                        teamImage2:
                            '${controller.fixtureDetails.value!.data?[index].participants?[1].imagePath}',
                        teamName1:
                            '${controller.fixtureDetails.value!.data?[index].participants?[0].name}',
                        teamName2:
                            '${controller.fixtureDetails.value!.data?[index].participants?[1].name}',
                        state:
                            '${controller.fixtureDetails.value!.data?[index].state?.state}',
                        score1:
                            '${controller.fixtureDetails.value!.data?[index].scores?[0].score?.goals}',
                        score2:
                            '${controller.fixtureDetails.value!.data?[index].scores?[1].score?.goals}',
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    // Build the separator between items
                    return Container(
                      height: 10.h,
                      width: Get.width,
                      color: Colors.white,
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
