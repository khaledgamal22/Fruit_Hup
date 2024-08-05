import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/all_products/presentation/views/all_products_view_body.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/views/cart_view_body.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/widgets/about_us_view_body.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_Bottom_Navigation_Bar.dart';

class AboutUsView extends StatefulWidget {
  const AboutUsView({super.key});

  static const String name = 'AboutUsView';

  @override
  State<AboutUsView> createState() => _AboutUsViewState();
}

class _AboutUsViewState extends State<AboutUsView> {
  int index = 3;
  List<Widget> pages = [
    HomeViewBody(),
    AllProductsViewBody(),
    CartViewBody(),
    AboutUsViewBody(),
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
