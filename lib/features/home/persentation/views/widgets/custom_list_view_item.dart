import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .265,
      child: AspectRatio(
        aspectRatio: 2.65 / 4,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              image: DecorationImage(
                image: AssetImage(AssetsData.testImage),
              )),
        ),
      ),
    );
  }
}
