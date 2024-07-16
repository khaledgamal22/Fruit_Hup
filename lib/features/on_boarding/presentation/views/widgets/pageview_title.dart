import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class PageViewTitle extends StatelessWidget {
  const PageViewTitle({super.key, required this.text1, this.text2, this.text3});

  final String text1;
  final String? text2;
  final String? text3;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: AppStyle.styleBold23(context),
        ),
        Text(
          text2 ?? '',
          style: AppStyle.styleBold23(context)
              .copyWith(color: AppColor.priceColor),
        ),
        Text(
          text3 ?? '',
          style: AppStyle.styleBold23(context).copyWith(
            color: AppColor.primaryColor,
          ),
        ),
      ],
    );
  }
}
