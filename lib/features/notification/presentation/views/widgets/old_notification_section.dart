import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/notification/presentation/views/widgets/notification_amount_icon.dart';
import 'package:fruits_ecommerce_app/features/notification/presentation/views/widgets/notification_item.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

import '../../../../../generated/l10n.dart';

class OldNotificationSection extends StatelessWidget {
  const OldNotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text(
                S.of(context).inoldtime,
                style: AppStyle.styleBold16(context).copyWith(
                  color: AppColor.headerTextColor,
                ),
              ),
              SizedBox(width: 6),
              NotificationAmountIcon(),
              Spacer(),
              Text(
                S.of(context).markallread,
                style: AppStyle.styleRegular13(context),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        NotificationItem(),
        NotificationItem(),
        NotificationItem(),
        NotificationItem(),
        NotificationItem(),
        NotificationItem(),
        NotificationItem(),
        NotificationItem(),
        NotificationItem(),
      ],
    );
  }
}
