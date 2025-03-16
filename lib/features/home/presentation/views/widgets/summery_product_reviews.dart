import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/home/domain/entities/product_entity.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';

import '../../../../../uitilits/app_colors.dart';
import '../../../../../uitilits/app_style.dart';
import 'rating_bar.dart';

class SummeryProductReview extends StatelessWidget {
  const SummeryProductReview({
    super.key,
    required this.productEntity,
  });
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'الملخص',
          style: AppStyle.styleSemibold16(context),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color(0xffFFB400),
                      ),
                      Text(
                        productEntity.rating.toString(),
                        style: AppStyle.styleBold13(context).copyWith(
                          color: AppColor.headerTextColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    '88%',
                    style: AppStyle.styleRegular16(context).copyWith(
                      color: AppColor.headerTextColor,
                    ),
                  ),
                  Text(
                    S.of(context).recommended,
                    style: AppStyle.styleRegular13(context).copyWith(
                      color: AppColor.headerTextColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            const Expanded(
              flex: 5,
              child: Column(
                children: [
                  RatingBar(
                    value: 1,
                    text: '5',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RatingBar(
                    value: 0.8,
                    text: '4',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RatingBar(
                    value: 0.6,
                    text: '3',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RatingBar(
                    value: 0.4,
                    text: '2',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RatingBar(
                    value: 0.2,
                    text: '1',
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
