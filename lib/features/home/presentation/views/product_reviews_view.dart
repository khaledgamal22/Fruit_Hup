import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/product_reviews_view_body.dart';

import '../../../../core/helper_functions/build_custom_appBar.dart';

class ProductReviewsView extends StatelessWidget {
  const ProductReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context, 'المراجعه', null),
      body: ProductReviewsViewBody(),
    );
  }
}
