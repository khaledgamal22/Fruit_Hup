import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class PricePerAmountWidget extends StatelessWidget {
  const PricePerAmountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '20 جنيه',
            style: AppStyle.styleBold13(context).copyWith(
              color: AppColor.priceColor,
            ),
          ),
          TextSpan(
            text: ' /كيلو',
            style: AppStyle.styleSemibold13(context)
                .copyWith(color: Color(0xffF8C76D)),
          ),
        ],
      ),
    );
  }
}
