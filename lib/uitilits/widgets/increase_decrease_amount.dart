import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_user.dart';
import 'package:fruits_ecommerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/view_models/cubit/cart_cubit.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_floating_add_negative_button.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class IncreaseDecreaseAmount extends StatefulWidget {
  const IncreaseDecreaseAmount({
    super.key,
    required this.size,
    this.amountChange,
    this.cartEntity,
  });
  final double size;
  final CartEntity? cartEntity;
  final ValueChanged<int>? amountChange;

  @override
  State<IncreaseDecreaseAmount> createState() => _IncreaseDecreaseAmountState();
}

class _IncreaseDecreaseAmountState extends State<IncreaseDecreaseAmount> {
  int count = 1;
  @override
  void initState() {
    count = widget.cartEntity != null ? widget.cartEntity!.amount! : count;
    super.initState();
  }
  // @override
  // void didUpdateWidget(covariant increaseDecreaseAmount oldWidget) {
  //   widget.amountChange!(count);
  //   setState(() {

  //   });
  //   super.didUpdateWidget(oldWidget);
  // }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomFloatingAddButton(
          count: count,
          valueChange: (value) {
            setState(() {
              count = value;
              if (widget.cartEntity != null) {
                context.read<CartCubit>().updateCartData(
                    id: widget.cartEntity!.id,
                    data: {'amount': count},
                    currentUser: getUser().userId);
              }
              widget.amountChange!(count);
            });
          },
          width: widget.size,
          height: widget.size,
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          '$count',
          style: AppStyle.styleBold16(context).copyWith(
            color: const Color(0xff06140C),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        CustomFloatingNegativeButton(
          width: widget.size,
          height: widget.size,
          count: count,
          valueChanged: (value) {
            setState(() {
              count = value;
              if (widget.cartEntity != null) {
                context.read<CartCubit>().updateCartData(
                    id: widget.cartEntity!.id,
                    data: {'amount': count},
                    currentUser: getUser().userId);
              }
              widget.amountChange!(count);
            });
          },
        ),
      ],
    );
  }
}
