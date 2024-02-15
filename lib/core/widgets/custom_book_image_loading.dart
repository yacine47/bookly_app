import 'package:bookly_app/core/utils/my_shimmer_color.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomBookImageLoadingListView extends StatelessWidget {
  const CustomBookImageLoadingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: MyShimmerColor.baseColor,
      highlightColor: MyShimmerColor.highlightColor,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: AspectRatio(
          aspectRatio: 2.65 / 4,
          child: Container(
            color: Colors.grey,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ),
      ),
    );
  }
}

class CustomBookImageLoading extends StatelessWidget {
  const CustomBookImageLoading({super.key, this.padding = EdgeInsets.zero});
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: padding,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => const CustomBookImageLoadingListView(),
      separatorBuilder: (context, index) => const SizedBox(width: 12),
      itemCount: 5,
    );
  }
}
