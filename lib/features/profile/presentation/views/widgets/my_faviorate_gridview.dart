import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/features/profile/data/models/favorite_model.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/view_models/favorite/favorite_cubit.dart';

import 'my_faviorate_item.dart';

class MyFaviorateGridView extends StatefulWidget {
  const MyFaviorateGridView({super.key});

  @override
  State<MyFaviorateGridView> createState() => _MyFaviorateGridViewState();
}

class _MyFaviorateGridViewState extends State<MyFaviorateGridView> {
  @override
  void initState() {
    context.read<FavoriteCubit>().getFavorite();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        List<FavoriteModel> favoriteList =
            context.read<FavoriteCubit>().favoriteList;
        return GridView.builder(
          itemCount: favoriteList.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return MyFaviorateItem(
              favoriteModel: favoriteList[index],
            );
          },
        );
      },
    );
  }
}
