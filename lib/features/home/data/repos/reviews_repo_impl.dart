import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_ecommerce_app/core/services/database_service.dart';
import 'package:fruits_ecommerce_app/features/home/data/models/review_model.dart';
import 'package:fruits_ecommerce_app/features/home/domain/entities/review_entity.dart';

import '../../../../uitilits/backend_endpoints.dart';
import '../../domain/repos/reviews_repo.dart';

class ReviewsRepoImpl implements ReviewsRepo {
  final DatabaseServices databaseServices;

  ReviewsRepoImpl({required this.databaseServices});
  @override
  Future<List<ReviewEntity>> getReviews({required String productId}) async {
    try {
      QuerySnapshot querySnapshot = await databaseServices.getAllData(
        path:
            '${BackendEndpoints.getproducts}/$productId/${BackendEndpoints.getReviews}',
      );

      List<ReviewEntity> data = querySnapshot.docs
          .map(
            (doc) => ReviewModel.fromJson(doc.data() as Map<String, dynamic>),
          )
          .toList();
      return data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
