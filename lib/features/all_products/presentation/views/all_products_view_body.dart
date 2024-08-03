import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/all_products/presentation/views/widgets/my_products_section.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/best_seller_section.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/custom_notification_icon.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/search_text_filed.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class AllProductsViewBody extends StatelessWidget {
  const AllProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Spacer(),
                    Text(
                      'المنتجات',
                      style: AppStyle.styleBold19(context),
                    ),
                    Spacer(),
                    CustomNotificationIcon(),
                  ],
                ),
                SizedBox(height: 20),
                SearchTextField(),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 16,
            ),
            child: MyProductsSection(),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: BestSellerSection(
              isvisible: true,
            ),
          ),
        )
      ]),
    );
  }
}