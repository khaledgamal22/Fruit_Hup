import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.isChecked});

  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: ShapeDecoration(
        color: isChecked ? AppColor.primaryColor : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: isChecked ? AppColor.primaryColor : Color(0xffDDDFDF),
          ),
        ),
      ),
      child: isChecked
          ? Icon(
              FontAwesomeIcons.check,
              color: Colors.white,
              size: 16,
            )
          : null,
    );
  }
}
