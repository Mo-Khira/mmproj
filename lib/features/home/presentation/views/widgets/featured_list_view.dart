import 'package:flutter/material.dart';
import 'package:mmproj/features/home/domain/entities/book_entity.dart';

import 'custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key, required this.books});

  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.28,
      child: ListView.builder(
        itemCount: books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomBookImage(
              image: books[index].image ?? '',
            ),
          );
        },
      ),
    );
  }
}
