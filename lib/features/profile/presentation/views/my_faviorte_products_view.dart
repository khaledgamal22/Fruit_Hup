import 'package:flutter/material.dart';

import 'widgets/my_faviorate_products_view_body.dart';

class MyFaviorteProductsView extends StatelessWidget {
  const MyFaviorteProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyFaviorateProductsViewBody(),
    );
  }
}
