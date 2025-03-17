import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/features/my_orders/domain/entities/order_entity.dart';
import 'package:fruits_ecommerce_app/features/my_orders/presentation/view_models/orders/orders_cubit.dart';
import 'package:fruits_ecommerce_app/features/my_orders/presentation/views/widgets/my_order_card.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../generated/l10n.dart';
import '../../../../../uitilits/app_style.dart';

class MyOrdersListView extends StatelessWidget {
  const MyOrdersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersCubit, OrdersState>(
      builder: (context, state) {
        if (state is OrdersSuccess) {
          if (state.orders.isEmpty) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Center(
                child: Text(
                  S.of(context).noordersyet,
                  style: AppStyle.styleBold19(context),
                ),
              ),
            );
          }
          return ListView.builder(
            itemCount: state.orders.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: MyOrderCard(
                  orderEntity: state.orders[index],
                ),
              );
            },
          );
        } else if (state is OrdersFailure) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          return Skeletonizer(
            enabled: true,
            effect: const ShimmerEffect(),
            child: ListView.builder(
              itemCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: MyOrderCard(
                    orderEntity: OrderEntity(
                      date: '',
                      oredrNumber: '',
                      totalPrice: 0,
                      noOfItems: 0,
                    ),
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
