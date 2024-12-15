import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mmproj/core/utils/app_router.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mmproj/features/home/presentation/views/widgets/book_rating.dart';
import '../../../../../core/utils/styles.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem(
      {super.key,
      required this.image,
      required this.authorName,
      required this.title,
      required this.ratingAverage,
      required this.price,
      required this.id});

  final String id;
  final String image;
  final String authorName;
  final String title;
  final num ratingAverage;
  final num price;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // GoRouter.of(context).push(AppRouter.kBookDetailsView);
        GoRouter.of(context).push(
          AppRouter.kBookDetailsView,
          extra: {
            "image": image,
            "authorName": authorName,
            "title": title,
            "rate": ratingAverage,
          },
        );
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 3.5 / 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(
                  imageUrl: image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    authorName,
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$price\$",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      BookRating(
                        ratingAverage: ratingAverage,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
