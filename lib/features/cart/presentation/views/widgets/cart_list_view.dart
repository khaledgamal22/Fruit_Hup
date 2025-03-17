import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/views/widgets/cart_item.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Center(
                child: Text(
                  S.of(context).noprodincart,
                  style: AppStyle.styleBold19(context),
                ),
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
          return Skeletonizer(
            enabled: true,
            effect: const ShimmerEffect(),
            child: ListView.builder(
              itemCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => CartItem(
                cartEntity: CartEntity(
                    id: 'lmnbvghcgfcclk',
                    nameProductEn: 'cjdk',
                    amount: 1,
                    nameProduct: 'lkjuhg',
                    priceProduct: 100,
                    imageProduct:
                        'https://s3-alpha-sig.figma.com/img/d8be/3d59/ab143bf1dd908919438d5e148d1cb383?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FDZ7Hjr6Vf7H3VlwTadr-gcUejK0er~o94-ViM4Zmega9439wOpHn4fxt827oFOe9HfmZ3yOFOO9t8gY1wkSbQlhepnzta6Z~sH3fT7e8Fnw1251OOlgL0Cfp0hHeb2rZxs7fPhYV4JKYP5L7bP6yqI93YDXzKYYDDEMXXJlnp9larK8dAld8D1IQnpfx16E678U~qGBKdhWVkAeSeME-FV-7MnYRDP2hfG9DCMtEv7rE6oaOdqUMjncD16UdKygyHfOJ4uXEdMG3OdbKJzI4FAQCUU7e4R8U7p7rJFgVyl7FqS9pAxMOlMzgNA7RGfZ7inRdd3ZF6Y43bPDWmOJgw__'),
              ),
            ),
          );
        }
      },
    );
  }
}
