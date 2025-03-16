import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/build_custom_appBar.dart';
import 'package:fruits_ecommerce_app/features/notification/presentation/views/widgets/new_notification_section.dart';
import 'package:fruits_ecommerce_app/features/notification/presentation/views/widgets/old_notification_section.dart';

import '../../../../../generated/l10n.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildCustomAppBar(context, S.of(context).notifications, null),
          const SizedBox(height: 20),
          const NewNotificationSection(),
          const SizedBox(height: 20),
          const OldNotificationSection(),
        ],
      ),
    );
  }
}
