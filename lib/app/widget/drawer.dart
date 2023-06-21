import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/app_colors.dart';
import '../constant/app_style.dart';
import '../constant/app_widgets.dart';
import 'customize_listtile.dart';

class CustomizeDrawer extends StatelessWidget {
  const CustomizeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(left: 8.0.w),
        child: SizedBox(
          height: Get.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 150.h,
                  width: Get.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "TURBO",
                        style: drawerTextStyle(),
                      ),
                      AppWidgets().gapW8(),
                      RichText(
                        text: TextSpan(
                          text: 'F',
                          style: drawerTextStyle(),
                          children: [
                            TextSpan(
                              text: 'OO',
                              style: drawerTextStyle(
                                  color: AppColors.selectedColor),
                            ),
                            TextSpan(
                              text: 'TBALL',
                              style: drawerTextStyle(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Settings",
                  style: textRegularStyle(
                      fontSize: 25, fontWeight: FontWeight.w500),
                ),
                AppWidgets().gapH16(),
                const CustomizeListTile(
                  title: 'Push Notification',
                  imagePath: 'images/notification.png',
                  color: Colors.yellow,
                  showButton: true,
                ),
                AppWidgets().gapH8(),
                const CustomizeListTile(
                  title: 'Auto Refresh',
                  imagePath: 'images/refresh.png',
                  color: Colors.blue,
                  showButton: true,
                ),
                AppWidgets().gapH8(),
                const CustomizeListTile(
                  title: 'Vibration',
                  imagePath: 'images/vibration.png',
                  color: Colors.green,
                  showButton: true,
                ),
                AppWidgets().gapH10(),
                Text(
                  "Info",
                  style: textRegularStyle(
                      fontSize: 25, fontWeight: FontWeight.w500),
                ),
                AppWidgets().gapH16(),
                const CustomizeListTile(
                  title: 'Help',
                  imagePath: 'images/help.png',
                  color: Colors.orange,
                ),
                AppWidgets().gapH8(),
                const CustomizeListTile(
                  title: 'Privacy and policy',
                  imagePath: 'images/privacy.png',
                  color: Colors.blue,
                ),
                AppWidgets().gapH8(),
                const CustomizeListTile(
                  title: 'Rate this app',
                  imagePath: 'images/review.png',
                  color: Colors.yellow,
                ),
                AppWidgets().gapH8(),
                const CustomizeListTile(
                  title: 'Terms of use',
                  imagePath: 'images/terms.png',
                  color: Colors.blue,
                ),
                AppWidgets().gapH8(),
                const CustomizeListTile(
                  title: 'Share app',
                  imagePath: 'images/share.png',
                  color: Colors.purpleAccent,
                ),
                AppWidgets().gapH16(),
                Row(
                  children: [
                    Text(
                      'All rights reserved by',
                      style: textRegularStyle(),
                    ),
                    AppWidgets().gapW10(),
                    Text(
                      'TURBO FOOTBALL',
                      style: textRegularStyleW600(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
