import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/home/domain/entities/product_entity.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/routing_name.dart';

class RatingRowWidget extends StatelessWidget {
  const RatingRowWidget({super.key, required this.productEntity});
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.amber),
        const SizedBox(width: 6),
        Text(
          '${productEntity.rating}',
          style: AppStyle.styleSemibold13(context).copyWith(
            color: const Color(
              0xff111719,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          '(+${productEntity.ratingCount})',
          style: AppStyle.styleRegular13(context).copyWith(
            color: const Color(
              0xff9796A1,
            ),
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, RoutingName.productReviews,
              arguments: productEntity),
          child: Text(
            'المراجعه',
            style: AppStyle.styleBold13(context).copyWith(
              color: AppColor.primaryColor,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
