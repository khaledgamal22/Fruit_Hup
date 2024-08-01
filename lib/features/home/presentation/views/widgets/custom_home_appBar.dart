import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/custom_notification_icon.dart';
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
        CustomNotificationIcon(),
      ],
    );
  }
}
