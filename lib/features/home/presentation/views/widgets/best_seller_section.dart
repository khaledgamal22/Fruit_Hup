import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/view_models/home/home_cubit.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/product_grid_view.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/routing_name.dart';

import '../../../domain/repos/home_repo.dart';

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
                Navigator.pushNamed(context, RoutingName.allBestSeller);
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
        BlocProvider(
          create: (context) => HomeCubit(getIt.get<HomeRepo>())..getProducts(),
          child: ProductGridView(),
        ),
      ],
    );
  }
}
