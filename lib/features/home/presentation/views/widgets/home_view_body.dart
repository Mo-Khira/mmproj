import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:mmproj/core/utils/assets.dart';
import 'package:mmproj/core/utils/styles.dart';
import 'package:mmproj/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:mmproj/features/home/presentation/views/widgets/best_seller_list_view_bloc_builder.dart';
// import 'package:mmproj/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:mmproj/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:mmproj/features/home/presentation/views/widgets/featured_books_list_view_bloc_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomAppBar(),
              ),
              FeaturedBooksListViewBlocBuilder(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "Newest Books",
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        // SliverFillRemaining()
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListViewBlocBuilder(),
          ),
        )
      ],
    );
    // return const
  }
}
