import 'package:flutter/material.dart';

import '../../../../../core/helper_functions/build_custom_appBar.dart';

import 'my_faviorate_gridview.dart';

class MyFavoriteProductsViewBody extends StatelessWidget {
  const MyFavoriteProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10),
          buildCustomAppBar(context, 'المفضلة', null),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MyFaviorateGridView(),
          ),
        ],
      ),
    );
  }
}
