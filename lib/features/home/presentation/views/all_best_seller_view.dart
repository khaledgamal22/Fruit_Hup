import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/build_custom_appBar.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/all_best_seller_view_body.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/custom_notification_icon.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_Bottom_Navigation_Bar.dart';

import 'home_view.dart';

class AllBestSellerView extends StatefulWidget {
  const AllBestSellerView({super.key});

  static const name = 'allbestseller';

  @override
  State<AllBestSellerView> createState() => _AllBestSellerViewState();
}

int currentIndex = 0;

final List<Widget> pages = [
  const AllBestSellerViewBody(),
  const productView(),
  const CartView(),
  const ProfileView(),
];

class _AllBestSellerViewState extends State<AllBestSellerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(
        context,
        'الأكثر مبيعًا',
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomNotificationIcon(),
        ),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        indexChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
