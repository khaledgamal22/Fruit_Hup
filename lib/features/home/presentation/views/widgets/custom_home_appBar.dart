import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(Assets.imagesPineappleCuate1),
        ),
        SizedBox(width: 10),
        Column(
          children: [
            Text(
              'صباح الخير !..',
              style: AppStyle.styleRegular16(context),
            ),
            Text(
              'أحمد مصطفي',
              style: AppStyle.styleBold16(context).copyWith(
                color: AppColor.headerTextColor,
              ),
            ),
          ],
        ),
        Expanded(child: SizedBox()),
        Container(
          width: 34,
          height: 34,
          decoration: ShapeDecoration(
            shape: CircleBorder(),
            color: Color(0xffEEF8ED),
          ),
          child: Icon(
            Icons.notifications_outlined,
            color: AppColor.primaryColor,
          ),
        ),
      ],
    );
  }
}
