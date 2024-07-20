import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/sign_up_view.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'لا تمتلك حساب؟',
          style: AppStyle.styleSemibold16(context).copyWith(
            color: Color(0xff949D9E),
          ),
        ),
        SizedBox(
          width: 3,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              SignUpView.name,
            );
          },
          child: Text(
            'قم بإنشاء حساب',
            style: AppStyle.styleSemibold16(context).copyWith(
              color: AppColor.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
