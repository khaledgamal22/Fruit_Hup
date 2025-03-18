import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';
import 'package:fruits_ecommerce_app/features/checkout/data/repos/checkout_repo.dart';
import 'package:fruits_ecommerce_app/features/checkout/presentation/view_models/cubit/checkout_cubit.dart';
import 'package:fruits_ecommerce_app/features/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:fruits_ecommerce_app/features/my_orders/domain/entities/order_entity.dart';

import '../../../my_orders/domain/repos/orders_repo.dart';
import '../../../my_orders/presentation/view_models/orders/orders_cubit.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.orderEntity});
  final OrderEntity orderEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
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
        child: CheckoutViewBody(
          orderEntity: orderEntity,
        ),
      ),
    );
  }
}
