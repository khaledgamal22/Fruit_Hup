import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/all_products/presentation/views/all_products_view_body.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/views/cart_view_body.dart';
import 'package:fruits_ecommerce_app/features/notification/presentation/views/widgets/notification_view_body.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/profile_details_view_body.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_Bottom_Navigation_Bar.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  static const name = 'notification_view';

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  int index = 0;

  List<Widget> pages = [
    NotificationViewBody(),
    AllProductsViewBody(),
    CartViewBody(),
    ProfileDetailsViewBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: index,
        indexChanged: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}
