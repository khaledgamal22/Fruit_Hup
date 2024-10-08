import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';

import '../routing_name.dart';

class CustomNotificationIcon extends StatelessWidget {
  const CustomNotificationIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, RoutingName.notification);
      },
      child: Container(
        width: 34,
        height: 34,
        decoration: ShapeDecoration(
          shape: CircleBorder(),
          color: Color(0xffEEF8ED),
        ),
        child: Image.asset(
          Assets.imagesNotification,
        ),
      ),
    );
  }
}
