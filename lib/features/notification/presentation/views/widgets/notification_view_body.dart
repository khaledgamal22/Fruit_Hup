import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/build_custom_appBar.dart';
import 'package:fruits_ecommerce_app/features/notification/presentation/views/widgets/new_notification_section.dart';
import 'package:fruits_ecommerce_app/features/notification/presentation/views/widgets/old_notification_section.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildCustomAppBar(context, 'الاشعارات', null),
          SizedBox(height: 20),
          NewNotificationSection(),
          SizedBox(height: 20),
          OldNotificationSection(),
        ],
      ),
    );
  }
}
