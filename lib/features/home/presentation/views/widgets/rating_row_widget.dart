import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class RatingRowWidget extends StatelessWidget {
  const RatingRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.amber),
        SizedBox(width: 6),
        Text(
          '4.5',
          style: AppStyle.styleSemibold13(context).copyWith(
            color: Color(
              0xff111719,
            ),
          ),
        ),
        SizedBox(width: 10),
        Text(
          '(30+)',
          style: AppStyle.styleRegular13(context).copyWith(
            color: Color(
              0xff9796A1,
            ),
          ),
        ),
        SizedBox(width: 10),
        Text(
          'المراجعه',
          style: AppStyle.styleBold13(context).copyWith(
            color: AppColor.primaryColor,
          ),
        ),
      ],
    );
  }
}
