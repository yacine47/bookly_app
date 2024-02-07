import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/featred_book_item.dart';
import 'package:flutter/material.dart';

class FeatredBooksListView extends StatelessWidget {
  const FeatredBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .265,
      child: ListView.separated(
        padding: const EdgeInsets.only(left: kPaddingHor),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const FeatredBookItem(),
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemCount: 50,
      ),
    );
  }
}
