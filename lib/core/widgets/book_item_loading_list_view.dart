import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/my_shimmer_color.dart';

import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

class BookItemLoadingListView extends StatelessWidget {
  const BookItemLoadingListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingHor),
      child: Shimmer.fromColors(
        baseColor: MyShimmerColor.baseColor,
        highlightColor: MyShimmerColor.highlightColor,
        child: SizedBox(
          height: 114,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.65 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 16,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      height: 16,
                      width: MediaQuery.of(context).size.width * .4,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      height: 12,
                      width: MediaQuery.of(context).size.width * .2,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 12,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 12,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BookItemsLoading extends StatelessWidget {
  const BookItemsLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const BookItemLoadingListView(),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: 5,
    );
  }
}
