import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_user.dart';
import 'package:fruits_ecommerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/view_models/home/home_cubit.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';

import '../../../../cart/presentation/view_models/cubit/cart_cubit.dart';

class AddToCartButton extends StatefulWidget {
  const AddToCartButton({super.key, required this.cartEntity});

  final CartEntity cartEntity;

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  bool isInCart = false;

  checkIsProductInCart() async {
    isInCart = await BlocProvider.of<HomeCubit>(context).isProdutInCart(
      id: widget.cartEntity.id,
      currentUser: getUser().userId,
    );
    setState(() {});
  }

  @override
  void initState() {
    checkIsProductInCart();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isInCart) {
          BlocProvider.of<CartCubit>(context).addCartData(
              cartEntity: widget.cartEntity, currentUser: getUser().userId);
          isInCart = true;
          setState(() {});
        }
      },
      child: Container(
        width: 36,
        height: 36,
        decoration: ShapeDecoration(
          shape: CircleBorder(),
          color: AppColor.primaryColor,
        ),
        child: Center(
          child: isInCart
              ? Icon(
                  Icons.check,
                  size: 26,
                  color: Colors.white,
                )
              : Icon(
                  Icons.add,
                  size: 26,
                  color: Colors.white,
                ),
        ),
      ),
    );
  }
}
