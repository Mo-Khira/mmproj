import 'package:flutter/material.dart';
import 'package:mmproj/core/utils/styles.dart';
import 'package:mmproj/features/home/presentation/views/widgets/book_rating.dart';
import 'package:mmproj/features/home/presentation/views/widgets/books_action.dart';
import 'package:mmproj/features/home/presentation/views/widgets/custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.20,
          ),
          child: const CustomBookImage(
            image: '',
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          // ratingAverage: 0.0,
        ),
        const SizedBox(
          height: 35,
        ),
        const BooksAction(),
      ],
    );
  }
}
