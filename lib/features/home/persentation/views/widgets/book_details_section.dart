import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .25),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 36),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 6),
        Text(
          'The Jungle Book',
          style: Styles.textStyle16.copyWith(
            color: Colors.white.withOpacity(.7),
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 12),
        const BookRating(),
        const SizedBox(height: 30),
        const BookAction(),
      ],
    );
  }
}
