import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/views/widgets/cart_item.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return CartItem();
      },
    );
  }
}
