import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class RatingBar extends StatelessWidget {
  const RatingBar({
    super.key,
    required this.value,
    required this.text,
  });
  final double value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Transform.rotate(
            angle: 180 * 3.14 / 180,
            child: SizedBox(
              height: 8,
              child: LinearProgressIndicator(
                value: value,
                color: const Color(0xffFFB400),
                backgroundColor: const Color(0xffF1F3F3),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: AppStyle.styleSemibold13(context).copyWith(
            color: AppColor.headerTextColor,
          ),
        ),
      ],
    );
  }
}
