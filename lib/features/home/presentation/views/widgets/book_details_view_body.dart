import 'package:flutter/material.dart';
import 'package:mmproj/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:mmproj/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:mmproj/features/home/presentation/views/widgets/similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody(
      {super.key,
      this.image,
      required this.title,
      this.authorName,
      this.ratingAverage});

  final String? image;
  final String? title;
  final String? authorName;
  final num? ratingAverage;
  @override
  Widget build(BuildContext context) {
// Can't use Expanded Widget WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          // fillOverscroll: true,
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomBookDetailsAppBar(),
                  BookDetailsSection(
                    image: image,
                    authorName: authorName,
                    title: title,
                    ratingAverage: ratingAverage,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const SimilarBookSection(),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
