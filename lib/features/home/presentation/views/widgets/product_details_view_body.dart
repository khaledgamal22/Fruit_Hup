import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/feature_product_card.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/increase_decrease_amount.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/price_per_amount_widget.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/rating_row_widget.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_AppBar_icon.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.43,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  Assets.imagesEllipse225,
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: CustomAppBarIcon(),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Flexible(
                  child: Image.network(
                    image,
                    height: 220,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'فراولة',
                            style: AppStyle.styleBold16(context).copyWith(
                              color: AppColor.headerTextColor,
                            ),
                          ),
                          PricePerAmountWidget(),
                        ],
                      ),
                      Spacer(),
                      increaseDecreaseAmount(
                        Size: 45,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  RatingRowWidget(),
                  SizedBox(height: 10),
                  Text(
                    'ينتمي إلى الفصيلة القرعية ولثمرته لُب حلو المذاق وقابل للأكل، وبحسب علم النبات فهي تعتبر ثمار لبيّة، تستعمل لفظة البطيخ للإشارة إلى النبات نفسه أو إلى الثمرة تحديداً',
                    style: AppStyle.styleRegular13(context).copyWith(
                      color: Color(0xff979899),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      FeatureProductCard(
                        image: Assets.imagesCalender,
                      ),
                      Spacer(),
                      FeatureProductCard(
                        image: Assets.imagesOrganic,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      FeatureProductCard(
                        image: Assets.imagesCalory,
                      ),
                      Spacer(),
                      FeatureProductCard(
                        image: Assets.imagesOrganic,
                      ),
                    ],
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: CustomButton(title: 'اضف الي السلة', onTap: () {}),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
