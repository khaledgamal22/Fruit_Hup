import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../uitilits/app_colors.dart';
import '../../../../../uitilits/app_style.dart';

class RowCheck extends StatelessWidget {
  const RowCheck({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RowcheckItem(
          label: 'الشحن',
          title: '1',
          itemIndex: 0,
          currentIndex: currentIndex,
        ),
        RowcheckItem(
          label: 'العنوان',
          title: '2',
          itemIndex: 1,
          currentIndex: currentIndex,
        ),
        RowcheckItem(
          label: 'الدفع',
          title: '3',
          itemIndex: 2,
          currentIndex: currentIndex,
        ),
      ],
    );
  }
}

class RowcheckItem extends StatelessWidget {
  const RowcheckItem({
    super.key,
    this.title,
    required this.label,
    required this.itemIndex,
    required this.currentIndex,
  });

  final String? title;
  final String label;
  final int itemIndex;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 23,
          height: 23,
          decoration: ShapeDecoration(
            shape: CircleBorder(),
            color: currentIndex < itemIndex
                ? Color(0xffF2F3F3)
                : AppColor.primaryColor,
          ),
          child: currentIndex < itemIndex
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
          style: currentIndex < itemIndex
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
