import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/view_models/cubit/cart_cubit.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/views/widgets/cart_list_view.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';

import '../../../../uitilits/routing_name.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({super.key});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  num total = 0;
  int cartlength = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
      listener: (context, state) {
        total = context.read<CartCubit>().total;
        cartlength = state is CartSuccess ? state.cartList.length : 0;
      },
      builder: (context, state) {
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
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    height: 41,
                    color: Color(0xffEBF9F1),
                    child: Center(
                      child: Text(
                        'لديك $cartlength منتجات في سله التسوق',
                        style: AppStyle.styleRegular13(context).copyWith(
                          color: AppColor.primaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: CartListView(),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(height: 50),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: CustomButton(
                      title: 'الدفع  $total جنيه',
                      onTap: () =>
                          Navigator.of(context).pushNamed(RoutingName.checkout),
                    ),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
