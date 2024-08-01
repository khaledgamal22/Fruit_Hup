import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';

import '../app_style.dart';

class ActiveIconBottomNavigation extends StatelessWidget {
  const ActiveIconBottomNavigation({
    super.key,
    required this.label,
    required this.icon,
  });
  final String label;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xffEEEEEE),
      ),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: ShapeDecoration(
              color: AppColor.primaryColor,
              shape: CircleBorder(),
            ),
            child: icon,
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            label,
            style: AppStyle.styleSemibold11(context),
          ),
        ],
      ),
    );
  }
}
