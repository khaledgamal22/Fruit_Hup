import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';

class CustomNotificationIcon extends StatelessWidget {
  const CustomNotificationIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
