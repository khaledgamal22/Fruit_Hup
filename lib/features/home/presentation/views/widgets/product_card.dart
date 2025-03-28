import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';
import 'package:fruits_ecommerce_app/core/services/shared_preference_singleton.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/view_models/cubit/cart_cubit.dart';
import 'package:fruits_ecommerce_app/features/home/domain/entities/product_entity.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/view_models/home/home_cubit.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/add_to_cart_button.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/price_per_amount_widget.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/view_models/favorite/favorite_cubit.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../uitilits/routing_name.dart';
import '../../../../cart/domain/entities/cart_entity.dart';
import '../../../../cart/domain/repos/cart_repo.dart';
import '../../../../profile/data/models/favorite_model.dart';
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
                  child: Skeleton.ignore(
                    child: FavoriteIcon(
                      favoriteModel: FavoriteModel(
                        name: productEntity.name,
                        english: productEntity.englishName,
                        image: productEntity.image,
                        price: productEntity.price,
                        id: productEntity.id,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: CachedNetworkImage(
                    imageUrl: productEntity.image,
                    fit: BoxFit.fill,
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
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
                          getIt.get<SharedPref>().getCurrentLanguage() == 'ar'
                              ? productEntity.name
                              : productEntity.englishName,
                          style: AppStyle.styleSemibold13(context).copyWith(
                            color: AppColor.headerTextColor,
                          ),
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
                          nameProductEn: productEntity.englishName,
                          priceProduct: productEntity.price,
                          imageProduct: productEntity.image,
                          id: productEntity.id,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({
    super.key,
    required this.favoriteModel,
  });

  final FavoriteModel favoriteModel;

  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool isfavorite = false;
  checkIsProductFavorite() async {
    isfavorite = await context.read<HomeCubit>().isProductFavorite(
          id: widget.favoriteModel.id,
        );
    setState(() {});
  }

  @override
  void initState() {
    checkIsProductFavorite();
    super.initState();
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
                if (isfavorite) {
                  widget.favoriteModel.delete();
                  isfavorite = false;
                }
              },
              child: Icon(
                isfavorite ? Icons.favorite : Icons.favorite_outline,
                color: isfavorite ? Colors.red : const Color(0xff292D32),
                size: 24,
              ),
            ),
          ],
        );
      },
    );
  }
}

// Image.network(
//                     productEntity.image,
//                     fit: BoxFit.fill,
//                   )
