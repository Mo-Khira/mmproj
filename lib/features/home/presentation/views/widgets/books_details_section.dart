import 'package:flutter/material.dart';
import 'package:mmproj/core/utils/styles.dart';
import 'package:mmproj/features/home/presentation/views/widgets/book_rating.dart';
import 'package:mmproj/features/home/presentation/views/widgets/books_action.dart';
import 'package:mmproj/features/home/presentation/views/widgets/custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection(
      {super.key,
      required this.image,
      this.title,
      this.authorName,
      this.ratingAverage});

  final String? image;
  final String? title;
  final String? authorName;
  final num? ratingAverage;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.20,
          ),
          child: CustomBookImage(
            image: image!,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Center(
          child: Text(
            textAlign: TextAlign.center,
            title!,
            style: Styles.textStyle30,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            authorName!,
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          ratingAverage: ratingAverage ?? 0.0,
        ),
        const SizedBox(
          height: 35,
        ),
        const BooksAction(),
      ],
    );
  }
}
