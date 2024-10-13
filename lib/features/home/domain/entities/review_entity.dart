class ReviewEntity {
  final String name;
  final String image;
  final String comment;
  final String id;
  final num rating;
  final String date;

  ReviewEntity({
    required this.id,
    required this.name,
    required this.image,
    required this.comment,
    required this.rating,
    required this.date,
  });
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'comment': comment,
      'rating': rating,
      'id': id,
      'date': date,
    };
  }
}
