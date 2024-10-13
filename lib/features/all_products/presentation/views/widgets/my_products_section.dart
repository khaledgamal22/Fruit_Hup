import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';
import 'package:fruits_ecommerce_app/features/all_products/presentation/view_models/featured_products/featured_products_cubit.dart';
import 'package:fruits_ecommerce_app/features/all_products/presentation/views/widgets/my_products_list_view.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

import '../../../domain/repos/all_product_repo.dart';

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
            Container(
              width: 44,
              height: 31,
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: BorderSide(
                  width: 1,
                  color: Color(0xffCACECE),
                ),
              )),
              child: Image.asset(
                Assets.imagesArrowSwapHorizontal,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 70,
          child: BlocProvider(
            create: (context) => FeaturedProductsCubit(
              allProductRepo: getIt.get<AllProductRepo>(),
            )..getFeaturedProducts(),
            child: MyProductsListView(),
          ),
        ),
      ],
    );
  }
}
