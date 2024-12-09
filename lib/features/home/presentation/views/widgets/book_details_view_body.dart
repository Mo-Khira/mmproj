import 'package:flutter/material.dart';
import 'package:mmproj/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:mmproj/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:mmproj/features/home/presentation/views/widgets/similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
// Can't use Expanded Widget WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          // fillOverscroll: true,
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            child: SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBookDetailsAppBar(),
                  BookDetailsSection(),
                  SizedBox(
                    height: 50,
                  ),
                  SimilarBookSection(),
                  SizedBox(
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
