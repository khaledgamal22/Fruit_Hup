import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/features/all_products/presentation/view_models/featured_products/featured_products_cubit.dart';
import 'package:fruits_ecommerce_app/features/all_products/presentation/views/widgets/my_products_list_item.dart';
import 'package:fruits_ecommerce_app/features/home/domain/entities/product_entity.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MyProductsListView extends StatelessWidget {
  const MyProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedProductsCubit, FeaturedProductsState>(
      builder: (context, state) {
        if (state is FeaturedProductsSuccess) {
          return ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 10),
              child: MayProductsListItem(
                productEntity: state.products[index],
              ),
            ),
            itemCount: state.products.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
          );
        } else if (state is FeaturedProductsFailure) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          return Skeletonizer(
            enabled: true,
            effect: const ShimmerEffect(),
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 10),
                child: MayProductsListItem(
                  productEntity: ProductEntity(
                      name: '',
                      image:
                          'https://i.pinimg.com/originals/91/74/3a/91743a1fb224cfd949c4ae45da846d13.png',
                      price: 0,
                      rating: 0,
                      ratingCount: 0,
                      description: '',
                      id: '',
                      calory: 0,
                      reviews: [],
                      isFeatured: false),
                ),
              ),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
            ),
          );
        }
      },
    );
  }
}
