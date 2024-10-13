import 'package:fruits_ecommerce_app/features/home/domain/entities/review_entity.dart';

abstract class ReviewsRepo {
  Future<List<ReviewEntity>> getReviews({required String productId});
}
