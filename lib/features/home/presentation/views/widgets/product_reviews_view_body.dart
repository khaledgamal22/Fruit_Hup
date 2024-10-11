import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import '../../../../../uitilits/app_style.dart';
import 'rating_item.dart';
import 'review_text_feild.dart';
import 'summery_product_reviews.dart';

class ProductReviewsViewBody extends StatelessWidget {
  const ProductReviewsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ReviewTextField(
              hintText: '  اكتب التعليق..',
              keyboardType: TextInputType.text,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  '324 مراجعه',
                  style: AppStyle.styleBold13(context).copyWith(
                    color: AppColor.headerTextColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SummeryProductReview(),
            SizedBox(
              height: 30,
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: RatingItem(),
              ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
          ],
        ),
      ),
    );
  }
}
