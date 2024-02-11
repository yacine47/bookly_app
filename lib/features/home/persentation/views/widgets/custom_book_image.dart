import 'package:bookly_app/features/home/persentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/featred_book_item.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        const SizedBox(height: 33),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .28),
          child: const FeatredBookItem(),
        ),
      ],
    );
  }
}
