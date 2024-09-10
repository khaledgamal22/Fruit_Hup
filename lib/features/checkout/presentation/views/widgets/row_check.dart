import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../uitilits/app_colors.dart';
import '../../../../../uitilits/app_style.dart';

class RowCheck extends StatelessWidget {
  const RowCheck({super.key, required this.items});
  final List<RowcheckItem> items;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: items,
    );
  }
}

class RowcheckItem extends StatelessWidget {
  const RowcheckItem({super.key, this.title, required this.label});

  final String? title;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 23,
          height: 23,
          decoration: ShapeDecoration(
            shape: CircleBorder(),
            color: title != null ? Color(0xffF2F3F3) : AppColor.primaryColor,
          ),
          child: title != null
              ? Center(
                  child: Text(
                    title!,
                    style: AppStyle.styleSemibold13(context).copyWith(
                      color: AppColor.headerTextColor,
                    ),
                  ),
                )
              : Icon(
                  FontAwesomeIcons.check,
                  color: Colors.white,
                  size: 16,
                ),
        ),
        SizedBox(width: 5),
        Text(
          label,
          style: title != null
              ? AppStyle.styleSemibold13(context).copyWith(
                  color: Color(0xffAAAAAA),
                )
              : AppStyle.styleBold13(context).copyWith(
                  color: AppColor.primaryColor,
                ),
        ),
      ],
    );
  }
}
