import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

void showSnackBarMessage(BuildContext context, String errorMessage) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: AppColor.primaryColor,
      content: Text(
        errorMessage,
        style: AppStyle.styleBold16(context).copyWith(
          color: Colors.white,
        ),
      ),
    ),
  );
}
