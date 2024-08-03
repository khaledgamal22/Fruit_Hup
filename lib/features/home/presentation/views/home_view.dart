import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/all_products/presentation/views/all_products_view_body.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/views/cart_view_body.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/home_view_body.dart';

import '../../../../uitilits/widgets/custom_Bottom_Navigation_Bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const name = 'home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const HomeViewBody(),
    const AllProductsViewBody(),
    const CartViewBody(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Profile View',
      style: TextStyle(
        fontSize: 50,
      ),
    ));
  }
}
