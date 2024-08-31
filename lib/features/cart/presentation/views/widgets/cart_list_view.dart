import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/views/widgets/cart_item.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';

import '../../../../../uitilits/app_style.dart';
import '../../view_models/cubit/cart_cubit.dart';

class CartListView extends StatelessWidget {
  const CartListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        if (state is CartSuccess) {
          if (state.cartList.isEmpty) {
            return Center(
              child: Text(
                'لا يوجد منتجات في سلة التسوق',
                style: AppStyle.styleBold19(context),
              ),
            );
          }
          return ListView.builder(
            itemCount: state.cartList.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => CartItem(
              cartEntity: state.cartList[index],
            ),
          );
        } else if (state is CartFailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColor.primaryColor,
            ),
          );
        }
      },
    );
  }
}
