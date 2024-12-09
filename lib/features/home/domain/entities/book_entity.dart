class BookEntity {
  final String bookId;
  final String? image;
  final String title;
  final dynamic authorName;
  final num? price;
  final dynamic rating;

  BookEntity({
    required this.image,
    required this.title,
    required this.authorName,
    required this.price,
    required this.rating,
    required this.bookId,
  });
}
