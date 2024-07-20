import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class HaveAlreadyAccount extends StatelessWidget {
  const HaveAlreadyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'تمتلك حساب بالفعل؟',
          style: AppStyle.styleSemibold16(context).copyWith(
            color: Color(0xff949D9E),
          ),
        ),
        SizedBox(
          width: 3,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            'تسجيل دخول',
            style: AppStyle.styleSemibold16(context).copyWith(
              color: AppColor.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
