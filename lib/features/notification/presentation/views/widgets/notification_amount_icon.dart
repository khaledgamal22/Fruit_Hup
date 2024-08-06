import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class NotificationAmountIcon extends StatelessWidget {
  const NotificationAmountIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22,
      height: 22,
      decoration: ShapeDecoration(
        shape: CircleBorder(),
        color: Color(0xffEEF8ED),
      ),
      child: Center(
        child: Text(
          '2',
          style: AppStyle.styleBold13(context).copyWith(
            color: AppColor.primaryColor,
          ),
        ),
      ),
    );
  }
}
