import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/app_style.dart';

class CustomizeListTile extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color color;
  final bool showButton;

  const CustomizeListTile(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.color,
      this.showButton = false});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        dense: true,
        contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
        leading: Container(
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(0.2),
            image: DecorationImage(
              image: AssetImage(imagePath),
            ),
          ),
        ),
        title: Text(
          title,
          style: textRegularStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        trailing: (showButton)
            ? Switch(
                value: false,
                onChanged: (bool value) {},
              )
            : Padding(
                padding: EdgeInsets.only(right: 4.0.w),
                child: const Icon(
                  Icons.keyboard_arrow_right,
                  size: 40,
                ),
              ));
  }
}
