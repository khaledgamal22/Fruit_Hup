import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/my_orders/presentation/views/widgets/my_order_card.dart';

class MyOrdersListView extends StatelessWidget {
  const MyOrdersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: MyOrderCard(),
          );
        });
  }
}
