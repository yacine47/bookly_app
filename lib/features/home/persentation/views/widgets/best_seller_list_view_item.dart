import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingHor),
      child: SizedBox(
        height: 105,
        child: Row(
          children: [
            AspectRatio(
                aspectRatio: 2.65 / 4,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(AssetsData.testImage),
                      )),
                )),
            const Column(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
