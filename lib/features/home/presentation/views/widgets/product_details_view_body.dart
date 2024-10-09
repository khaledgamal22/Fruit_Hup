import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/home/domain/entities/product_entity.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/feature_product_card.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/increase_decrease_amount.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/price_per_amount_widget.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/rating_row_widget.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_AppBar_icon.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({
    super.key,
    required this.productEntity,
  });
  final ProductEntity productEntity;

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
                      onTap: () => Navigator.of(context).pop(),
                      child: CustomAppBarIcon(),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Flexible(
                  child: Image.network(
                    productEntity.image,
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
                            productEntity.name,
                            style: AppStyle.styleBold16(context).copyWith(
                              color: AppColor.headerTextColor,
                            ),
                          ),
                          PricePerAmountWidget(
                            price: productEntity.price,
                          ),
                        ],
                      ),
                      Spacer(),
                      increaseDecreaseAmount(
                        amountChange: (value) => {},
                        size: 45,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  RatingRowWidget(
                    productEntity: productEntity,
                  ),
                  SizedBox(height: 10),
                  Text(
                    productEntity.description,
                    style: AppStyle.styleRegular11(context).copyWith(
                      color: Color(0xff979899),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      FeatureProductCard(
                        title: 'الصلاحيه',
                        info: 'عام',
                        image: Assets.imagesCalender,
                      ),
                      Spacer(),
                      FeatureProductCard(
                        title: 'أورجانيك',
                        info: '100%',
                        image: Assets.imagesOrganic,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      FeatureProductCard(
                        title: '100 جرام',
                        info: '${productEntity.calory} كالورى',
                        image: Assets.imagesCalory,
                      ),
                      Spacer(),
                      FeatureProductCard(
                        supInfo: '(${productEntity.ratingCount})',
                        title: 'Reviews',
                        info: '${productEntity.rating}',
                        image: Assets.imagesStarreview,
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
