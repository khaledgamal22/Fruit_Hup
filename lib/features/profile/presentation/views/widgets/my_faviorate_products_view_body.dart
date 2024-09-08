import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';
import 'package:fruits_ecommerce_app/core/services/hive_service.dart';

import '../../../../../core/helper_functions/build_custom_appBar.dart';

import '../../view_models/favorite/favorite_cubit.dart';
import 'my_faviorate_gridview.dart';

class MyFavoriteProductsViewBody extends StatelessWidget {
  const MyFavoriteProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10),
          buildCustomAppBar(context, 'المفضلة', null),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BlocProvider(
              create: (context) =>
                  FavoriteCubit(hiveService: getIt.get<HiveService>()),
              child: MyFaviorateGridView(),
            ),
          ),
        ],
      ),
    );
  }
}
