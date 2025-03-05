import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/view_models/cubit/cart_cubit.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/views/widgets/cart_list_view.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';

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
                  'سلة التسوق',
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
                        'لديك ${state is CartSuccess ? state.cartList.length : 0} منتجات في سله التسوق',
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
                          'الدفع ${state is CartSuccess ? state.total : 0} جنيه',
                      onTap: () =>
                          Navigator.of(context).pushNamed(RoutingName.checkout),
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
}
