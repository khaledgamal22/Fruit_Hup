import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/build_custom_appBar.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/views/widgets/cart_list_view.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              buildCustomAppBar(context, 'سلة التسوق', null),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 41,
                color: Color(0xffEBF9F1),
                child: Center(
                  child: Text(
                    'لديك 3 منتجات في سله التسوق',
                    style: AppStyle.styleRegular13(context).copyWith(
                      color: AppColor.primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Expanded(child: CartListView()),
        ),
      ],
    );
  }
}
