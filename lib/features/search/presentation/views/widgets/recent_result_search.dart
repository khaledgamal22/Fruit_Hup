import 'package:flutter/material.dart';

import '../../../../../uitilits/app_colors.dart';
import '../../../../../uitilits/app_style.dart';
import 'recent_result_list.dart';

class RecentResultsSearch extends StatelessWidget {
  const RecentResultsSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'عمليات البحث الأخيرة',
              style: AppStyle.styleSemibold13(context).copyWith(
                color: AppColor.headerTextColor,
              ),
            ),
            Spacer(),
            Text(
              'حذف الكل',
              style: AppStyle.styleRegular13(context),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        ResultRecentList(),
      ],
    );
  }
}
