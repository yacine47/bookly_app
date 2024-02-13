import 'package:bookly_app/features/home/persentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .135,
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImage(imageUrl: 'https://ew.com/thmb/rvat6WP-MplFuFNA4xJ-aGKEADc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/9781408855652-png-c57764456b554308ae1398474caab3c2.jpg'),
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemCount: 50,
      ),
    );
  }
}
