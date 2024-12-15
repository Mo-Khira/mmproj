import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:mmproj/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:mmproj/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:mmproj/features/search/presentation/views/widgets/search_view_body.dart';

class SearchViewBodyBlocBuilder extends StatelessWidget {
  const SearchViewBodyBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SearchResultListView(
            books: state.books,
          );
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errorMessage);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
