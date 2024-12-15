import 'package:flutter/material.dart';
import 'package:mmproj/features/home/presentation/views/widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView(
      {super.key, this.image, this.title, this.authorName, this.ratingAverage});

  final String? image;
  final String? title;
  final String? authorName;
  final num? ratingAverage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(
          image: image,
          title: title,
          authorName: authorName,
          ratingAverage: ratingAverage,
        ),
      ),
    );
  }
}
