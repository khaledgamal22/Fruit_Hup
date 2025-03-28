import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/build_custom_appBar.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';
import 'package:fruits_ecommerce_app/features/my_orders/domain/repos/orders_repo.dart';
import 'package:fruits_ecommerce_app/features/my_orders/presentation/view_models/orders/orders_cubit.dart';
import 'package:fruits_ecommerce_app/features/my_orders/presentation/views/widgets/my_order_list_view.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';

class MyOrdersViewBody extends StatelessWidget {
  const MyOrdersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              buildCustomAppBar(context, S.of(context).myorders, null),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: BlocProvider(
              create: (context) => OrdersCubit(
                ordersRepo: getIt.get<OrdersRepo>(),
              )..getOrders(),
              child: const MyOrdersListView(),
            ),
          ),
        ),
      ],
    );
  }
}
