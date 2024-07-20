import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            width: 20,
            color: Color(0xffDDDFDF),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          'أو',
          style: AppStyle.styleSemibold16(context),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Container(
            height: 1,
            width: 20,
            color: Color(0xffDDDFDF),
          ),
        )
      ],
    );
  }
}
