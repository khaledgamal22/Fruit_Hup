import 'package:bloc/bloc.dart';
import 'package:fruits_ecommerce_app/features/home/domain/repos/reviews_repo.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/review_entity.dart';

part 'reviews_state.dart';

class ReviewsCubit extends Cubit<ReviewsState> {
  ReviewsCubit({required this.reviewsRepo}) : super(ReviewsInitial());
  final ReviewsRepo reviewsRepo;
  List<ReviewEntity> reviews = [];

  Future<void> getReviews({required String productId}) async {
    try {
      emit(ReviewsLoading());
      reviews = await reviewsRepo.getReviews(productId: productId);
      emit(ReviewsSuccess(reviews: reviews));
    } catch (e) {
      emit(ReviewsFailure(errorMessage: e.toString()));
    }
  }
}
