import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/checkout/presentation/views/widgets/address_view_body.dart';
import 'package:fruits_ecommerce_app/features/checkout/presentation/views/widgets/charge_view_body.dart';
import 'package:fruits_ecommerce_app/features/checkout/presentation/views/widgets/order_review_body.dart';
import 'package:fruits_ecommerce_app/features/checkout/presentation/views/widgets/pay_view_body.dart';

class CheckoutPageView extends StatelessWidget {
  const CheckoutPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
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
          PayViewBody(
            pageController: pageController,
          ),
          OrderReviewBody(
            pageController: pageController,
          ),
        ],
      ),
    );
  }
}
