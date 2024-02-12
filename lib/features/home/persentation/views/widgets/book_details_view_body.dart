import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/custom_book_details_app_bar.dart';

import 'package:bookly_app/features/home/persentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kPaddingHor),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                SizedBox(height: 28),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 46)),
                SimilarBooksSection(),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
