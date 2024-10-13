import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';
import 'package:fruits_ecommerce_app/features/home/domain/entities/product_entity.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/view_models/reviews/reviews_cubit.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/product_reviews_view_body.dart';

import '../../../../core/helper_functions/build_custom_appBar.dart';
import '../../domain/repos/reviews_repo.dart';

class ProductReviewsView extends StatelessWidget {
  const ProductReviewsView({super.key, required this.productEntity});
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context, 'المراجعه', null),
      body: BlocProvider(
        create: (context) => ReviewsCubit(
          reviewsRepo: getIt.get<ReviewsRepo>(),
        )..getReviews(
            productId: productEntity.id,
          ),
        child: ProductReviewsViewBody(
          productEntity: productEntity,
        ),
      ),
    );
  }
}
