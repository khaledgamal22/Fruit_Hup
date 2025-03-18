import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/checkout/presentation/view_models/cubit/checkout_cubit.dart';
import 'package:fruits_ecommerce_app/features/checkout/presentation/views/widgets/address_view_body.dart';
import 'package:fruits_ecommerce_app/features/checkout/presentation/views/widgets/charge_view_body.dart';
import 'package:fruits_ecommerce_app/features/checkout/presentation/views/widgets/order_review_body.dart';
import 'package:fruits_ecommerce_app/features/my_orders/domain/entities/order_entity.dart';

class CheckoutPageView extends StatelessWidget {
  const CheckoutPageView(
      {super.key, required this.pageController, required this.orderEntity});

  final OrderEntity orderEntity;

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final checkoutCubit = CheckoutCubit.get(context);
    return SafeArea(
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ChargeViewBody(
            pageController: pageController,
          ),
          AddressViewBody(
            pageController: pageController,
          ),
          OrderReviewBody(
            pageController: pageController,
            orderEntity: orderEntity,
            address: checkoutCubit.addressController.text,
          ),
        ],
      ),
    );
  }
}
