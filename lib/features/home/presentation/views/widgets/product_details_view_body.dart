import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_user.dart';
import 'package:fruits_ecommerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:fruits_ecommerce_app/features/home/domain/entities/product_entity.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/feature_product_card.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/increase_decrease_amount.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/price_per_amount_widget.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/rating_row_widget.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_AppBar_icon.dart';

import '../../../../cart/presentation/view_models/cubit/cart_cubit.dart';

// ignore: must_be_immutable
class ProductDetailsViewBody extends StatefulWidget {
  const ProductDetailsViewBody({
    super.key,
    required this.productEntity,
  });
  final ProductEntity productEntity;

  @override
  State<ProductDetailsViewBody> createState() => _ProductDetailsViewBodyState();
}

class _ProductDetailsViewBodyState extends State<ProductDetailsViewBody> {
  int cartAmount = 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height * 0.43,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    Assets.imagesEllipse225,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: const CustomAppBarIcon(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Flexible(
                    child: Image.network(
                      widget.productEntity.image,
                      height: 220,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
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
                            widget.productEntity.name,
                            style: AppStyle.styleBold16(context).copyWith(
                              color: AppColor.headerTextColor,
                            ),
                          ),
                          PricePerAmountWidget(
                            price: widget.productEntity.price,
                          ),
                        ],
                      ),
                      const Spacer(),
                      IncreaseDecreaseAmount(
                        amountChange: (value) => {
                          setState(() {
                            cartAmount = value;
                          })
                        },
                        size: 45,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  RatingRowWidget(
                    productEntity: widget.productEntity,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.productEntity.description,
                    style: AppStyle.styleRegular11(context).copyWith(
                      color: const Color(0xff979899),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
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
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      FeatureProductCard(
                        title: '100 جرام',
                        info: '${widget.productEntity.calory} كالورى',
                        image: Assets.imagesCalory,
                      ),
                      const Spacer(),
                      FeatureProductCard(
                        supInfo: '(${widget.productEntity.ratingCount})',
                        title: 'Reviews',
                        info: '${widget.productEntity.rating}',
                        image: Assets.imagesStarreview,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 10,
                    ),
                    child: AddToCart(
                      productEntity: widget.productEntity,
                      cartAmount: cartAmount,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AddToCart extends StatefulWidget {
  const AddToCart({
    super.key,
    required this.productEntity,
    required this.cartAmount,
  });
  final ProductEntity productEntity;
  final int cartAmount;

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  bool isInCart = false;

  @override
  void initState() {
    checkIsinCart();
    super.initState();
  }

  checkIsinCart() async {
    isInCart = await context.read<CartCubit>().checkIfCartDataExists(
          id: widget.productEntity.id,
          currentUser: getUser().userId,
        );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CustomProductDetailsButton(
      isSelected: isInCart,
      title: isInCart ? 'موجود في السلة' : 'اضافة الى السلة',
      onTap: () {
        if (!isInCart) {
          context.read<CartCubit>().addCartData(
                cartEntity: CartEntity(
                  nameProduct: widget.productEntity.name,
                  imageProduct: widget.productEntity.image,
                  priceProduct: widget.productEntity.price,
                  id: widget.productEntity.id,
                  amount: widget.cartAmount,
                ),
                currentUser: getUser().userId,
              );
        }
      },
    );
  }
}

class CustomProductDetailsButton extends StatelessWidget {
  const CustomProductDetailsButton({
    super.key,
    required this.title,
    this.onTap,
    this.isSelected = false,
  });

  final String title;
  final void Function()? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            height: 54,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: isSelected || state is CartAdded
                  ? const Color.fromARGB(255, 123, 123, 123)
                  : AppColor.primaryColor,
            ),
            child: Center(
              child: state is CartLoading
                  ? const CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : Text(
                      state is CartAdded ? 'موجود في السلة' : title,
                      style: AppStyle.styleBold16(context),
                    ),
            ),
          ),
        );
      },
    );
  }
}
