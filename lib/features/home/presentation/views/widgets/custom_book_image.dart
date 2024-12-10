import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
// import 'package:mmproj/core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.5 / 5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
