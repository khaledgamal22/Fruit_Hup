import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/all_products/presentation/views/widgets/my_products_list_view.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class MyProductsSection extends StatelessWidget {
  const MyProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'منتجاتنا',
              style: AppStyle.styleBold16(context).copyWith(
                color: AppColor.headerTextColor,
              ),
            ),
            Spacer(),
            Image.asset(
              Assets.imagesArrowSwapHorizontal,
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 70,
          child: MyProductsListView(),
        ),
      ],
    );
  }
}
