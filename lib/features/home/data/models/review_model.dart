import 'package:fruits_ecommerce_app/features/home/domain/entities/review_entity.dart';

class ReviewModel extends ReviewEntity {
  ReviewModel({
    required super.id,
    required super.name,
    required super.image,
    required super.comment,
    required super.rating,
    required super.date,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      comment: json['comment'] as String,
      rating: json['rating'] as num,
      date: json['date'] as String,
    );
  }
}
