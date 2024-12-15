import 'package:flutter/material.dart';
import 'package:mmproj/features/home/domain/entities/book_entity.dart';
import 'package:mmproj/features/home/presentation/views/widgets/book_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key, required this.books});

  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: books.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem(
            image: books[index].image ?? 'None',
            authorName: books[index].authorName,
            title: books[index].title,
            ratingAverage: books[index].rating ?? 0.0,
            price: books[index].price ?? 0.0,
            id: books[index].bookId,
          ),
        );
      },
    );
  }
}
