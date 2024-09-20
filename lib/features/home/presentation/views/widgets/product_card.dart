import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';
import 'package:fruits_ecommerce_app/features/cart/presentation/view_models/cubit/cart_cubit.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/add_to_cart_button.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/price_per_amount_widget.dart';
import 'package:fruits_ecommerce_app/features/profile/data/models/favorite_model.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/view_models/favorite/favorite_cubit.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:uuid/uuid.dart';

import '../../../../../uitilits/routing_name.dart';
import '../../../../cart/domain/entities/cart_entity.dart';
import '../../../../cart/domain/repos/cart_repo.dart';
import '../../../../profile/domain/repos/favorite_repo.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(getIt.get<CartRepo>()),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, RoutingName.productDetails,
              arguments:
                  'https://media.istockphoto.com/id/1400057530/photo/bananas-isolated.jpg?s=612x612&w=0&k=20&c=KLtV4quCnxwWOOx_uUJTQUTl9VVJzA72ykrQlc8P6a0=');
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
                        name: 'فراولة',
                        image:
                            'https://media.istockphoto.com/id/1400057530/photo/bananas-isolated.jpg?s=612x612&w=0&k=20&c=KLtV4quCnxwWOOx_uUJTQUTl9VVJzA72ykrQlc8P6a0=',
                        price: 100,
                        id: const Uuid().v4()),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Image.network(
                    'https://static.vecteezy.com/system/resources/previews/029/333/904/original/muskmelon-transparent-background-png.png',
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
                          'فراولة',
                          style: AppStyle.styleSemibold13(context)
                              .copyWith(color: AppColor.headerTextColor),
                        ),
                        PricePerAmountWidget(),
                      ],
                    ),
                    AddToCartButton(
                      cartEntity: CartEntity(
                        nameProduct: 'فراولة',
                        priceProduct: 100,
                        imageProduct:
                            'https://media.istockphoto.com/id/1400057530/photo/bananas-isolated.jpg?s=612x612&w=0&k=20&c=KLtV4quCnxwWOOx_uUJTQUTl9VVJzA72ykrQlc8P6a0=',
                        id: const Uuid().v4(),
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
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        return Row(
          children: [
            GestureDetector(
              onTap: () {
                context
                    .read<FavoriteCubit>()
                    .addFavorite(favoriteModel: widget.favoriteModel);
                setState(() {
                  isClicked = !isClicked;
                });
              },
              child: Icon(
                isClicked ? Icons.favorite : Icons.favorite_outline,
                color: isClicked
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
