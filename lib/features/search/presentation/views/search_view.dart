import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/all_products/presentation/views/all_products_view_body.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/views/cart_view_body.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/profile_details_view_body.dart';
import 'package:fruits_ecommerce_app/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_Bottom_Navigation_Bar.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  static const String name = 'search_view';

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  int index = 0;
  List<Widget> pages = [
    SearchViewBody(),
    AllProductsViewBody(),
    CartViewBody(),
    ProfileDetailsViewBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: CustomBottomNavigationBar(
        indexChanged: (value) {
          index = value;
          setState(() {});
        },
        currentIndex: index,
      ),
    );
  }
}
