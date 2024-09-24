import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/view_models/cubit/cart_cubit.dart';
import 'package:fruits_ecommerce_app/features/home/domain/entities/product_entity.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/view_models/home/home_cubit.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/add_to_cart_button.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/price_per_amount_widget.dart';
import 'package:fruits_ecommerce_app/features/profile/data/models/favorite_model.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/view_models/favorite/favorite_cubit.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../uitilits/routing_name.dart';
import '../../../../cart/domain/entities/cart_entity.dart';
import '../../../../cart/domain/repos/cart_repo.dart';
import '../../../../profile/domain/repos/favorite_repo.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.productEntity});
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(getIt.get<CartRepo>()),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, RoutingName.productDetails,
              arguments: productEntity);
        },
        child: Container(
          color: const Color(0xffF3F5F7),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
            child: Column(
              children: [
                BlocProvider(
                  create: (context) => FavoriteCubit(
                    favoriteRepo: getIt.get<FavoriteRepo>(),
                  ),
                  child: favoriteIcon(
                    favoriteModel: FavoriteModel(
                      name: productEntity.name,
                      image: productEntity.image,
                      price: productEntity.price,
                      id: productEntity.id,
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Image.network(
                    productEntity.image,
                    fit: BoxFit.fill,
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: SizedBox(height: 10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productEntity.name,
                          style: AppStyle.styleSemibold13(context)
                              .copyWith(color: AppColor.headerTextColor),
                        ),
                        PricePerAmountWidget(
                          price: productEntity.price,
                        ),
                      ],
                    ),
                    Skeleton.ignore(
                      child: AddToCartButton(
                        cartEntity: CartEntity(
                          nameProduct: productEntity.name,
                          priceProduct: productEntity.price,
                          imageProduct: productEntity.image,
                          id: productEntity.id,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class favoriteIcon extends StatefulWidget {
  const favoriteIcon({
    super.key,
    required this.favoriteModel,
  });

  final FavoriteModel favoriteModel;

  @override
  State<favoriteIcon> createState() => _favoriteIconState();
}

class _favoriteIconState extends State<favoriteIcon> {
  bool isfavorite = false;
  @override
  void initState() {
    checkIsProductFavorite();
    super.initState();
  }

  checkIsProductFavorite() {
    isfavorite = context
        .read<HomeCubit>()
        .isProductFavorite(favoriteModel: widget.favoriteModel);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        return Row(
          children: [
            GestureDetector(
              onTap: () {
                if (!isfavorite) {
                  context
                      .read<FavoriteCubit>()
                      .addFavorite(favoriteModel: widget.favoriteModel);
                  isfavorite = true;
                }
              },
              child: Icon(
                isfavorite ? Icons.favorite : Icons.favorite_outline,
                color: isfavorite
                    ? Colors.red
                    : AppColor.headerTextColor.withOpacity(0.5),
                size: 24,
              ),
            ),
          ],
        );
      },
    );
  }
}
