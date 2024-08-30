import 'package:flutter/material.dart';

import 'package:fruits_ecommerce_app/features/notification/presentation/views/widgets/notification_view_body.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationViewBody(),
    );
  }
}
