import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../constant/app_colors.dart';
import '../../../constant/app_style.dart';
import '../controllers/bottomnavigationvar_controller.dart';

class BottomnavigationvarView extends GetView<BottomnavigationvarController> {
  const BottomnavigationvarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: controller.tabs[controller.currentIndex.value],
          bottomNavigationBar: Container(
            color: AppColors.blackColor,
            height: 80,
            child: TabBar(
              controller: controller.tapController,
              indicatorColor: Colors.transparent,
              unselectedLabelColor: AppColors.blackColor,
              padding: EdgeInsets.only(left: 1.w, right: 1.w, bottom: 3.h),
              indicatorPadding: EdgeInsets.zero,
              labelPadding: EdgeInsets.zero,
              labelStyle: textRegularStyle(
                fontSize: 16,
              ),
              labelColor: AppColors.unSelectedColor,
              onTap: (index) {
                controller.currentIndex.value = index;
              },
              tabs: [
                Tab(
                  iconMargin: EdgeInsets.zero,
                  height: 120.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageIcon(
                        const AssetImage('images/fixture.png'),
                        color: (controller.currentIndex.value == 0)
                            ? AppColors.selectedColor
                            : AppColors.unSelectedColor,
                        size: 40,
                      ),
                      Text(
                        "FIXTURE",
                        style: tapbarTextStyle(
                          color: (controller.currentIndex.value == 0)
                              ? AppColors.selectedColor
                              : AppColors.unSelectedColor,
                        ),
                      )
                    ],
                  ),
                ),
                Tab(
                  iconMargin: EdgeInsets.zero,
                  height: 120.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageIcon(
                        const AssetImage('images/favorite.png'),
                        color: (controller.currentIndex.value == 1)
                            ? AppColors.selectedColor
                            : AppColors.unSelectedColor,
                        size: 40,
                      ),
                      Text(
                        "FAVORITE",
                        style: tapbarTextStyle(
                          color: (controller.currentIndex.value == 1)
                              ? AppColors.selectedColor
                              : AppColors.unSelectedColor,
                        ),
                      )
                    ],
                  ),
                ),
                Tab(
                  iconMargin: EdgeInsets.zero,
                  height: 120.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageIcon(
                        const AssetImage('images/video.png'),
                        color: (controller.currentIndex.value == 2)
                            ? AppColors.selectedColor
                            : AppColors.unSelectedColor,
                        size: 40,
                      ),
                      Text(
                        "VIDEO",
                        style: tapbarTextStyle(
                          color: (controller.currentIndex.value == 2)
                              ? AppColors.selectedColor
                              : AppColors.unSelectedColor,
                        ),
                      )
                    ],
                  ),
                ),
                Tab(
                  iconMargin: EdgeInsets.zero,
                  height: 120.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageIcon(
                        const AssetImage('images/news.png'),
                        color: (controller.currentIndex.value == 3)
                            ? AppColors.selectedColor
                            : AppColors.unSelectedColor,
                        size: 40,
                      ),
                      Text(
                        "NEWS",
                        style: tapbarTextStyle(
                          color: (controller.currentIndex.value == 3)
                              ? AppColors.selectedColor
                              : AppColors.unSelectedColor,
                        ),
                      )
                    ],
                  ),
                ),
                Tab(
                  iconMargin: EdgeInsets.zero,
                  height: 120.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageIcon(
                        const AssetImage('images/standings.png'),
                        color: (controller.currentIndex.value == 4)
                            ? AppColors.selectedColor
                            : AppColors.unSelectedColor,
                        size: 40,
                      ),
                      Text(
                        "STANDINGS",
                        style: tapbarTextStyle(
                          color: (controller.currentIndex.value == 4)
                              ? AppColors.selectedColor
                              : AppColors.unSelectedColor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
