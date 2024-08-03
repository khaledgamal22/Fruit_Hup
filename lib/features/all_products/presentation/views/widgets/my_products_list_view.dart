import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/all_products/presentation/views/widgets/my_products_list_item.dart';

class MyProductsListView extends StatelessWidget {
  const MyProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(left: 10),
        child: MayProductsListItem(),
      ),
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
    );
  }
}
