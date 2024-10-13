import 'package:fruits_ecommerce_app/features/home/domain/entities/review_entity.dart';

class ProductEntity {
  final String name;
  final String image;
  final num price;
  final num rating;
  final int ratingCount;
  final String description;
  final String id;
  final int calory;
  final List<ReviewEntity> reviews;

  ProductEntity({
    required this.name,
    required this.image,
    required this.price,
    required this.rating,
    required this.ratingCount,
    required this.description,
    required this.id,
    required this.calory,
    required this.reviews,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'price': price,
      'rating': rating,
      'ratingCount': ratingCount,
      'description': description,
      'id': id,
      'calory': calory,
      'reviews': reviews.map((x) => x.toMap()).toList(),
    };
  }
}
