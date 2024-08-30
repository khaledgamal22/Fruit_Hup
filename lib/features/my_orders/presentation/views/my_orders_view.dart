import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/my_orders/presentation/views/widgets/my_orders_view_body.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyOrdersViewBody(),
    );
  }
}
