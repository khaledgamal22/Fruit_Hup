import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';
import 'package:fruits_ecommerce_app/features/checkout/data/repos/checkout_repo.dart';
import 'package:fruits_ecommerce_app/features/checkout/presentation/view_models/cubit/checkout_cubit.dart';
import 'package:fruits_ecommerce_app/features/checkout/presentation/views/widgets/address_view_body.dart';
import 'package:fruits_ecommerce_app/features/checkout/presentation/views/widgets/charge_view_body.dart';
import 'package:fruits_ecommerce_app/features/checkout/presentation/views/widgets/order_review_body.dart';
import 'package:fruits_ecommerce_app/features/my_orders/domain/entities/order_entity.dart';
import 'package:fruits_ecommerce_app/features/my_orders/domain/repos/orders_repo.dart';
import 'package:fruits_ecommerce_app/features/my_orders/presentation/view_models/orders/orders_cubit.dart';

class CheckoutPageView extends StatelessWidget {
  const CheckoutPageView(
      {super.key, required this.pageController, required this.orderEntity});

  final OrderEntity orderEntity;

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
          MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) =>
                    CheckoutCubit(checkoutRepo: getIt.get<CheckoutRepo>()),
              ),
              BlocProvider(
                create: (context) => OrdersCubit(
                  ordersRepo: getIt.get<OrdersRepo>(),
                ),
              ),
            ],
            child: OrderReviewBody(
              pageController: pageController,
              orderEntity: orderEntity,
            ),
          ),
        ],
      ),
    );
  }
}
