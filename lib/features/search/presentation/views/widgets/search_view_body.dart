import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mmproj/core/utils/styles.dart';
import 'package:mmproj/features/home/domain/entities/book_entity.dart';
import 'package:mmproj/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:mmproj/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:mmproj/features/search/presentation/views/widgets/search_view_body_bloc_builder.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                const CustomSearchTextField(),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Search Results",
              style: Styles.textStyle18,
            ),
            const SizedBox(
              height: 16,
            ),
            // const Container(
            // child:
            const SearchViewBodyBlocBuilder(),
            // ),
          ],
        ),
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key, required this.books});

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
