import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/persentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookItemListView extends StatelessWidget {
  const BookItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingHor),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(BookDetailsView.path);
        },
        child: SizedBox(
          height: 114,
          child: Row(
            children: [
              AspectRatio(
                  aspectRatio: 2.65 / 4,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AssetsData.testImage),
                        )),
                  )),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Harry Potter and the Goblet of Fire ',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGtSectraFine,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 3),
                    const Text(
                      'J.K. Rowling',
                      style: Styles.textStyle14,
                    ),
                    const SizedBox(height: 3),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '19.99 €',
                          style: Styles.textStyle20,
                        ),
                        BookRating(),
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
