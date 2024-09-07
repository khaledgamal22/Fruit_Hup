import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/view_models/cubit/cart_cubit.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_floating_add_negative_button.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class increaseDecreaseAmount extends StatefulWidget {
  const increaseDecreaseAmount({
    super.key,
    required this.Size,
    this.amountChange,
    this.cartEntity,
  });
  final double Size;
  final CartEntity? cartEntity;
  final ValueChanged<int>? amountChange;

  @override
  State<increaseDecreaseAmount> createState() => _increaseDecreaseAmountState();
}

class _increaseDecreaseAmountState extends State<increaseDecreaseAmount> {
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
              //count = widget.cartEntity!.amount!;
              count = value;
              if (widget.cartEntity != null) {
                context.read<CartCubit>().updateCartData(
                  id: widget.cartEntity!.id,
                  data: {'amount': count},
                );
              }
              widget.amountChange!(count);
            });
          },
          width: widget.Size,
          height: widget.Size,
        ),
        SizedBox(
          width: 16,
        ),
        Text(
          '$count',
          style: AppStyle.styleBold16(context).copyWith(
            color: Color(0xff06140C),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        CustomFloatingNegativeButton(
          width: widget.Size,
          height: widget.Size,
          count: count,
          valueChanged: (value) {
            setState(() {
              //count = widget.cartEntity!.amount!;
              count = value;
              if (widget.cartEntity != null) {
                context.read<CartCubit>().updateCartData(
                  id: widget.cartEntity!.id,
                  data: {'amount': count},
                );
              }
              widget.amountChange!(count);
            });
          },
        ),
      ],
    );
  }
}
