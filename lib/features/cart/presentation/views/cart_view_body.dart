import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/views/widgets/cart_list_view.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              AppBar(
                centerTitle: true,
                backgroundColor: Colors.transparent,
                title: Text(
                  'سلة التسوق',
                  style: AppStyle.styleBold19(context),
                ),
              ),
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
        SliverToBoxAdapter(
          child: CartListView(),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Expanded(
                child: SizedBox(height: 50),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomButton(title: 'الدفع  120جنيه'),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ],
    );
  }
}
