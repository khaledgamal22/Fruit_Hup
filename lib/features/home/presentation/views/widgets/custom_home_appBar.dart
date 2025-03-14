import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_user.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_notification_icon.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(Assets.imagesPineappleCuate1),
        ),
        const SizedBox(width: 10),
        Column(
          children: [
            Text(
              'صباح الخير !..',
              style: AppStyle.styleRegular16(context),
            ),
            Text(
              getUser().name,
              style: AppStyle.styleBold16(context).copyWith(
                color: AppColor.headerTextColor,
              ),
            ),
          ],
        ),
        const Expanded(child: SizedBox()),
        const CustomNotificationIcon(),
      ],
    );
  }
}
