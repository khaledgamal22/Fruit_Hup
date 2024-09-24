import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/features/home/domain/entities/product_entity.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/view_models/home/home_cubit.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/product_card.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeSuccess) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) => ProductCard(
              productEntity: state.products[index],
            ),
            itemCount: state.products.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          );
        } else if (state is HomeFailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return Skeletonizer(
            enabled: true,
            effect: const ShimmerEffect(),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) => ProductCard(
                productEntity: ProductEntity(
                  name: 'watermelon',
                  image:
                      'https://static.vecteezy.com/system/resources/previews/029/228/581/non_2x/apricot-transparent-background-free-png.png',
                  price: 0,
                  rating: 0,
                  ratingCount: 0,
                  description: '',
                  id: '',
                  calory: 0,
                ),
              ),
              itemCount: 8,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
            ),
          );
        }
      },
    );
  }
}
