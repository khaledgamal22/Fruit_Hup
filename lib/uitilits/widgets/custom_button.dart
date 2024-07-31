import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.title,
    this.onTap,
  });

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 54,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColor.primaryColor,
        ),
        child: Center(
          child: Text(
            title,
            style: AppStyle.styleBold16(context),
          ),
        ),
      ),
    );
  }
}
