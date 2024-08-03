import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/all_best_seller_view.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/product_grid_view.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class BestSellerSection extends StatelessWidget {
  const BestSellerSection({super.key, required this.isvisible});

  final bool isvisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'الأكثر مبيعًا',
              style: AppStyle.styleBold16(context).copyWith(
                color: AppColor.headerTextColor,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AllBestSellerView.name);
              },
              child: Visibility(
                visible: isvisible,
                child: Text(
                  'المزيد',
                  style: AppStyle.styleRegular13(context),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ProductGridView(),
      ],
    );
  }
}
