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
        drawer: CustomizeDrawer(),
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          elevation: 0,
          automaticallyImplyLeading: false,
          // Hide default drawer icon
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
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                controller.key.currentState?.openDrawer();
              },
            ),
          ],
        ),

        body: Column(
          children: [
            AppWidgets().gapH16(),
            Container(
              height: 100.h,
              width: Get.width,
              color: AppColors.blackColor,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 18.0.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      HomePageContainer(
                        day: 'FRI',
                        date: 'JUN 16',
                      ),
                      AppWidgets().gapW10(),
                      HomePageContainer(
                        day: 'FRI',
                        date: 'JUN 16',
                      ),
                      AppWidgets().gapW10(),
                      HomePageContainer(
                        day: 'TODAY',
                        date: 'JUN 16',
                      ),
                      AppWidgets().gapW10(),
                      Icon(
                        Icons.calendar_month_sharp,
                        size: 44,
                        color: AppColors.whiteColor,
                      ),
                      AppWidgets().gapW16(),
                      Container(
                        height: 53.h,
                        width: 150.w,
                        margin: EdgeInsets.only(left: 4, right: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: AppColors.greyColor.withOpacity(0.5),
                        ),
                        child: const ListTileTheme(
                          //  contentPadding: EdgeInsets.all(0),
                          dense: true,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.0),
                            child: ExpansionTile(
                              trailing: Icon(
                                Icons.keyboard_arrow_down,
                                color: AppColors.whiteColor,
                              ),
                              tilePadding: EdgeInsets.zero,
                              title: Text(
                                "ALL LEAGUES",
                                style: TextStyle(color: AppColors.whiteColor),
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
            AppWidgets().gapH16(),
            Container(
              height: Get.height * 0.622,
              width: Get.width,
              child: Obx(
                () => ListView.separated(
                  itemCount: controller.productList.value?.data?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    // Build the item at the specified index
                    return ListTile(
                      title: AllLeaguesWidget(
                        ligueImage:
                            '${controller.productList.value!.data?[index].league?.imagePath}',
                        ligueText:
                            '${controller.productList.value!.data?[index].league?.name}',
                        ligueCountry:
                            '${controller.productList.value!.data?[index].league?.country?.name}',
                        teamImage1:
                            '${controller.productList.value!.data?[index].participants?[0].imagePath}',
                        teamImage2:
                            '${controller.productList.value!.data?[index].participants?[1].imagePath}',
                        teamName1:
                            '${controller.productList.value!.data?[index].participants?[0].name}',
                        teamName2:
                            '${controller.productList.value!.data?[index].participants?[1].name}',
                        state:
                            '${controller.productList.value!.data?[index].state?.state}',
                        score1:
                            '${controller.productList.value!.data?[index].scores?[0].score?.goals}',
                        score2:
                            '${controller.productList.value!.data?[index].scores?[1].score?.goals}',
                      ),
                    );
                  },
                      separatorBuilder: (BuildContext context, int index) {
                        // Build the separator between items
                        return Container(
                          height: 12,
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
