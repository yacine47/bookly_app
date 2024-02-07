import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeatredBookItem extends StatelessWidget {
  const FeatredBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.65 / 4,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AssetsData.testImage),
            )),
      ),
    );
  }
}
