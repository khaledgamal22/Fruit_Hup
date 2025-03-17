import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/services/shared_preference_singleton.dart';
import 'package:fruits_ecommerce_app/features/cart/domain/repos/cart_repo.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../core/helper_functions/get_it_func.dart';
import '../../../../../uitilits/app_colors.dart';
import '../../../../../uitilits/app_style.dart';
import '../../../../cart/domain/entities/cart_entity.dart';
import '../../../../cart/presentation/view_models/cubit/cart_cubit.dart';
import '../../../../home/presentation/views/widgets/add_to_cart_button.dart';
import '../../../../home/presentation/views/widgets/price_per_amount_widget.dart';
import '../../../data/models/favorite_model.dart';
import '../../view_models/favorite/favorite_cubit.dart';

class MyFaviorateItem extends StatelessWidget {
  const MyFaviorateItem({super.key, required this.favoriteModel});

  final FavoriteModel favoriteModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF3F5F7),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    favoriteModel.delete();
                    context.read<FavoriteCubit>().getFavorite();
                  },
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 4,
              child: SizedBox(
                child: Image.network(
                  favoriteModel.image,
                ),
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
                          ? favoriteModel.name
                          : favoriteModel.english,
                      style: AppStyle.styleSemibold13(context).copyWith(
                        color: AppColor.headerTextColor,
                      ),
                    ),
                    PricePerAmountWidget(
                      price: favoriteModel.price,
                    ),
                  ],
                ),
                BlocProvider(
                  create: (context) => CartCubit(getIt.get<CartRepo>()),
                  child: Skeleton.ignore(
                    child: AddToCartButton(
                      cartEntity: CartEntity(
                        nameProduct: favoriteModel.name,
                        nameProductEn: favoriteModel.english,
                        priceProduct: 100,
                        imageProduct: favoriteModel.image,
                        id: favoriteModel.id,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
