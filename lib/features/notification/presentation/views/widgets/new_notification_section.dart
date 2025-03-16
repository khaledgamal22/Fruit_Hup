import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/notification/presentation/views/widgets/notification_amount_icon.dart';
import 'package:fruits_ecommerce_app/features/notification/presentation/views/widgets/notification_item.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

import '../../../../../generated/l10n.dart';

class NewNotificationSection extends StatelessWidget {
  const NewNotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text(
                S.of(context).neew,
                style: AppStyle.styleBold16(context).copyWith(
                  color: AppColor.headerTextColor,
                ),
              ),
              const SizedBox(width: 6),
              const NotificationAmountIcon(),
              const Spacer(),
              Text(
                S.of(context).markallread,
                style: AppStyle.styleRegular13(context),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        NotificationItem(),
      ],
    );
  }
}
