import 'package:flutter/material.dart';

import '../../../../../uitilits/app_colors.dart';
import '../../../../../uitilits/app_style.dart';

class RecentResultItem extends StatelessWidget {
  const RecentResultItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.schedule,
          color: Color(0xff949D9E),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'فراولة',
          style: AppStyle.styleRegular16(context).copyWith(
            color: AppColor.headerTextColor,
          ),
        ),
        Spacer(),
        Icon(
          Icons.close,
          color: Color(0xff0A0A0A),
        ),
      ],
    );
  }
}
