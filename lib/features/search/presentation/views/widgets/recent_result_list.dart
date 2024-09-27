import 'package:flutter/material.dart';

import 'recent_result_item.dart';

class ResultRecentList extends StatelessWidget {
  const ResultRecentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: RecentResultItem(),
        );
      },
    );
  }
}
