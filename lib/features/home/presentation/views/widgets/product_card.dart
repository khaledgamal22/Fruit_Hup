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

import '../../../../../core/services/hive_service.dart';
import '../../../../../uitilits/routing_name.dart';
import '../../../../cart/domain/entities/cart_entity.dart';
import '../../../../cart/domain/repos/cart_repo.dart';

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
                  'https://s3-alpha-sig.figma.com/img/d8be/3d59/ab143bf1dd908919438d5e148d1cb383?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FDZ7Hjr6Vf7H3VlwTadr-gcUejK0er~o94-ViM4Zmega9439wOpHn4fxt827oFOe9HfmZ3yOFOO9t8gY1wkSbQlhepnzta6Z~sH3fT7e8Fnw1251OOlgL0Cfp0hHeb2rZxs7fPhYV4JKYP5L7bP6yqI93YDXzKYYDDEMXXJlnp9larK8dAld8D1IQnpfx16E678U~qGBKdhWVkAeSeME-FV-7MnYRDP2hfG9DCMtEv7rE6oaOdqUMjncD16UdKygyHfOJ4uXEdMG3OdbKJzI4FAQCUU7e4R8U7p7rJFgVyl7FqS9pAxMOlMzgNA7RGfZ7inRdd3ZF6Y43bPDWmOJgw__');
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
                    hiveService: getIt.get<HiveService>(),
                  ),
                  child: favoriteIcon(
                    favoriteModel: FavoriteModel(
                        name: 'فراولة',
                        image:
                            'https://s3-alpha-sig.figma.com/img/d8be/3d59/ab143bf1dd908919438d5e148d1cb383?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FDZ7Hjr6Vf7H3VlwTadr-gcUejK0er~o94-ViM4Zmega9439wOpHn4fxt827oFOe9HfmZ3yOFOO9t8gY1wkSbQlhepnzta6Z~sH3fT7e8Fnw1251OOlgL0Cfp0hHeb2rZxs7fPhYV4JKYP5L7bP6yqI93YDXzKYYDDEMXXJlnp9larK8dAld8D1IQnpfx16E678U~qGBKdhWVkAeSeME-FV-7MnYRDP2hfG9DCMtEv7rE6oaOdqUMjncD16UdKygyHfOJ4uXEdMG3OdbKJzI4FAQCUU7e4R8U7p7rJFgVyl7FqS9pAxMOlMzgNA7RGfZ7inRdd3ZF6Y43bPDWmOJgw__',
                        price: 100,
                        id: const Uuid().v4()),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: SizedBox(
                    child: Image.network(
                      'https://s3-alpha-sig.figma.com/img/d8be/3d59/ab143bf1dd908919438d5e148d1cb383?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FDZ7Hjr6Vf7H3VlwTadr-gcUejK0er~o94-ViM4Zmega9439wOpHn4fxt827oFOe9HfmZ3yOFOO9t8gY1wkSbQlhepnzta6Z~sH3fT7e8Fnw1251OOlgL0Cfp0hHeb2rZxs7fPhYV4JKYP5L7bP6yqI93YDXzKYYDDEMXXJlnp9larK8dAld8D1IQnpfx16E678U~qGBKdhWVkAeSeME-FV-7MnYRDP2hfG9DCMtEv7rE6oaOdqUMjncD16UdKygyHfOJ4uXEdMG3OdbKJzI4FAQCUU7e4R8U7p7rJFgVyl7FqS9pAxMOlMzgNA7RGfZ7inRdd3ZF6Y43bPDWmOJgw__',
                    ),
                  ),
                ),
                Expanded(
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
                            'https://s3-alpha-sig.figma.com/img/d8be/3d59/ab143bf1dd908919438d5e148d1cb383?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FDZ7Hjr6Vf7H3VlwTadr-gcUejK0er~o94-ViM4Zmega9439wOpHn4fxt827oFOe9HfmZ3yOFOO9t8gY1wkSbQlhepnzta6Z~sH3fT7e8Fnw1251OOlgL0Cfp0hHeb2rZxs7fPhYV4JKYP5L7bP6yqI93YDXzKYYDDEMXXJlnp9larK8dAld8D1IQnpfx16E678U~qGBKdhWVkAeSeME-FV-7MnYRDP2hfG9DCMtEv7rE6oaOdqUMjncD16UdKygyHfOJ4uXEdMG3OdbKJzI4FAQCUU7e4R8U7p7rJFgVyl7FqS9pAxMOlMzgNA7RGfZ7inRdd3ZF6Y43bPDWmOJgw__',
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
                size: 20,
              ),
            ),
          ],
        );
      },
    );
  }
}
