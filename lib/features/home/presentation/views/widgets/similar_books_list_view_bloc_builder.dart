import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:mmproj/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:mmproj/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:mmproj/features/home/presentation/views/widgets/similar_books_list_view.dart';

class SimilarBooksListViewBlocBuilder extends StatelessWidget {
  const SimilarBooksListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SimilarBooksListView(
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
