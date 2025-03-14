import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/build_custom_appBar.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/all_best_seller_view_body.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_notification_icon.dart';

class AllBestSellerView extends StatelessWidget {
  const AllBestSellerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(
        context,
        'الأكثر مبيعًا',
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomNotificationIcon(),
        ),
      ),
      body: const AllBestSellerViewBody(),
    );
  }
}
