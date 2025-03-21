import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class PricePerAmountWidget extends StatelessWidget {
  const PricePerAmountWidget({
    super.key,
    required this.price,
  });
  final num price;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '$price',
            style: AppStyle.styleBold13(context).copyWith(
              color: AppColor.priceColor,
            ),
          ),
          TextSpan(
            text: S.of(context).kilo,
            style: AppStyle.styleSemibold13(context)
                .copyWith(color: const Color(0xffF8C76D)),
          ),
        ],
      ),
    );
  }
}
