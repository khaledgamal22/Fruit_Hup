import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/view_models/cubit/cart_cubit.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/views/widgets/cart_list_view.dart';
import 'package:fruits_ecommerce_app/features/my_orders/domain/entities/order_entity.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';
import 'package:intl/intl.dart';

import '../../../../uitilits/routing_name.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              AppBar(
                centerTitle: true,
                backgroundColor: Colors.transparent,
                title: Text(
                  S.of(context).cartshopping,
                  style: AppStyle.styleBold19(context),
                ),
              ),
              const SizedBox(height: 30),
              BlocBuilder<CartCubit, CartState>(
                builder: (context, state) {
                  return Container(
                    width: double.infinity,
                    height: 41,
                    color: const Color(0xffEBF9F1),
                    child: Center(
                      child: Text(
                        '${S.of(context).have} ${state is CartSuccess ? state.cartList.length : 0} ${S.of(context).productincart}',
                        style: AppStyle.styleRegular13(context).copyWith(
                          color: AppColor.primaryColor,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: CartListView(),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Expanded(
                child: SizedBox(height: 50),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: BlocBuilder<CartCubit, CartState>(
                  builder: (context, state) {
                    return CustomButton(
                      title:
                          '${S.of(context).pay} ${state is CartSuccess ? state.total : 0} ${S.of(context).pound}',
                      onTap: () => Navigator.of(context).pushNamed(
                        RoutingName.checkout,
                        arguments: OrderEntity(
                            oredrNumber:
                                "${1000000 + Random().nextInt(9000000)}",
                            date: getDate(),
                            totalPrice: state is CartSuccess ? state.total : 0,
                            noOfItems: state is CartSuccess
                                ? state.cartList.length
                                : 0),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ],
    );
  }

  String getDate() {
    var now = DateTime.now();
    var formatter = DateFormat('d MMMM, yyyy', 'ar');
    String formattedDate = formatter.format(now);

    return formattedDate;
  }
}
