import 'package:flutter/material.dart';
import 'package:mmproj/core/utils/styles.dart';
import 'package:mmproj/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:mmproj/features/home/presentation/views/widgets/similar_books_list_view_bloc_builder.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListViewBlocBuilder(),
      ],
    );
  }
}
