import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/features/home/domain/entities/review_entity.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/view_models/reviews/reviews_cubit.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../uitilits/app_style.dart';
import '../../../domain/entities/product_entity.dart';
import 'rating_item.dart';
import 'review_text_feild.dart';
import 'summery_product_reviews.dart';

class ProductReviewsViewBody extends StatelessWidget {
  const ProductReviewsViewBody({
    super.key,
    required this.productEntity,
  });
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const ReviewTextField(
              hintText: '  اكتب التعليق..',
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  '${productEntity.ratingCount} مراجعه',
                  style: AppStyle.styleBold13(context).copyWith(
                    color: AppColor.headerTextColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SummeryProductReview(
              productEntity: productEntity,
            ),
            const SizedBox(
              height: 30,
            ),
            BlocBuilder<ReviewsCubit, ReviewsState>(
              builder: (context, state) {
                if (state is ReviewsSuccess) {
                  return ListView.builder(
                    itemCount: state.reviews.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: RatingItem(
                        reviewEntity: state.reviews[index],
                      ),
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                  );
                } else if (state is ReviewsFailure) {
                  return Center(child: Text(state.errorMessage));
                } else {
                  return Skeletonizer(
                    enabled: true,
                    effect: const ShimmerEffect(),
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(
                          bottom: 20,
                        ),
                        child: RatingItem(
                          reviewEntity: ReviewEntity(
                            id: '',
                            name: '',
                            image:
                                'https://plus.unsplash.com/premium_photo-1676660359316-273bb172a0df?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8d29tYW4lMjBwcm9maWxlfGVufDB8fDB8fHww',
                            comment: '',
                            rating: 0,
                            date: '',
                          ),
                        ),
                      ),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
