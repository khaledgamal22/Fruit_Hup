import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/build_dialog.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_user.dart';
import 'package:fruits_ecommerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/increase_decrease_amount.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../view_models/cubit/cart_cubit.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key, required this.cartEntity, this.priceChange});

  final CartEntity cartEntity;
  final ValueChanged<num>? priceChange;
  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int count = 1;
  @override
  void initState() {
    count = widget.cartEntity.amount!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 95,
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Color(0xffF1F1F5),
          ),
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: 16),
          Container(
            height: 90,
            width: 90,
            color: Color(0xffF3F5F7),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Skeleton.ignore(
                child: Image.network(
                  widget.cartEntity.imageProduct,
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 6,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.cartEntity.nameProduct,
                  style: AppStyle.styleBold13(context).copyWith(
                    color: AppColor.headerTextColor,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '3 كم',
                  style: AppStyle.styleRegular13(context).copyWith(
                    color: AppColor.priceColor,
                  ),
                ),
                SizedBox(height: 6),
                increaseDecreaseAmount(
                  Size: 30,
                  cartEntity: widget.cartEntity,
                  amountChange: (value) {
                    setState(() {
                      count = value;
                      //don't need this function at this time
                      widget
                          .priceChange!(widget.cartEntity.priceProduct * count);
                    });
                  },
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    buildDialog(
                      context,
                      title: 'هل ترغب في حذف المنتج ؟',
                      onTap: () {
                        context.read<CartCubit>().deleteCartData(
                              id: widget.cartEntity.id,
                              currentUser: getUser().userId,
                            );
                        Navigator.pop(context);
                      },
                    );
                  },
                  child: Icon(
                    Icons.delete_outline,
                    color: Color(0xff949D9E),
                  ),
                ),
                Spacer(),
                Text(
                  '${widget.cartEntity.priceProduct * count}جنيه',
                  style: AppStyle.styleBold16(context).copyWith(
                    color: AppColor.priceColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
