import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/all_products/presentation/views/all_products_view_body.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/views/cart_view_body.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/widgets/information_profile_view_body.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_Bottom_Navigation_Bar.dart';

class InformationProfileView extends StatefulWidget {
  const InformationProfileView({super.key});

  static const String name = 'informationProfileView';

  @override
  State<InformationProfileView> createState() => _InformationProfileViewState();
}

class _InformationProfileViewState extends State<InformationProfileView> {
  int index = 3;
  static List<Widget> pages = [
    HomeViewBody(),
    AllProductsViewBody(),
    CartViewBody(),
    InformationProfileViewBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: index,
        indexChanged: (value) {
          index = value;
          setState(() {});
        },
      ),
    );
  }
}
