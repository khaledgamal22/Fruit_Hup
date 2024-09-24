class ProductEntity {
  final String name;
  final String image;
  final double price;
  final double rating;
  final int ratingCount;
  final String description;
  final String id;
  final int calory;

  ProductEntity({
    required this.name,
    required this.image,
    required this.price,
    required this.rating,
    required this.ratingCount,
    required this.description,
    required this.id,
    required this.calory,
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
    };
  }
}
