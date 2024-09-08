import 'package:flutter/material.dart';
import 'widgets/my_faviorate_products_view_body.dart';

class MyFavoriteProductsView extends StatelessWidget {
  const MyFavoriteProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyFavoriteProductsViewBody(),
    );
  }
}
