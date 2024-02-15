import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/custom_book_details_app_bar.dart';

import 'package:bookly_app/features/home/persentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPaddingHor),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                const SizedBox(height: 28),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const Expanded(child: SizedBox(height: 46)),
                const SimilarBooksSection(),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
