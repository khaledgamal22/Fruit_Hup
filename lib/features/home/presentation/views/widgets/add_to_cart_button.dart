import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';

import '../../../../cart/presentation/view_models/cubit/cart_cubit.dart';

class AddToCartButton extends StatefulWidget {
  const AddToCartButton({super.key, required this.cartEntity});

  final CartEntity cartEntity;

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  bool isexists = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
      listener: (context, state) async {
        isexists = await context
            .read<CartCubit>()
            .checkIfCartDataExists(id: widget.cartEntity.id);
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            BlocProvider.of<CartCubit>(context).addCartData(
              cartEntity: widget.cartEntity,
            );
          },
          child: Container(
            width: 36,
            height: 36,
            decoration: ShapeDecoration(
              shape: CircleBorder(),
              color: AppColor.primaryColor,
            ),
            child: Center(
              child: isexists || state is CartAdded
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
      },
    );
  }
}
