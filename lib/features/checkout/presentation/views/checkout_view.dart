import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:fruits_ecommerce_app/features/my_orders/domain/entities/order_entity.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.orderEntity});
  final OrderEntity orderEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CheckoutViewBody(
        orderEntity: orderEntity,
      ),
    );
  }
}
