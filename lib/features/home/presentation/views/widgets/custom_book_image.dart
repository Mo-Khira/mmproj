import 'package:flutter/material.dart';
import 'package:mmproj/core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.5 / 5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              AssetsData.test1,
            ),
          ),
        ),
      ),
    );
  }
}
