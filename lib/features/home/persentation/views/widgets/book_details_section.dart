import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .25),
          child: CustomBookImage(
              imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? ''),
        ),
        const SizedBox(height: 36),
        Text(
          bookModel.volumeInfo?.title ?? '',
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Text(
          bookModel.volumeInfo?.authors?[0] ?? '',
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
