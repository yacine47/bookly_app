import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/custom_failure_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_widget.dart';
import 'package:bookly_app/features/home/persentation/view_models/featured_books_cubit/featred_books_cubit.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatredBooksListView extends StatelessWidget {
  const FeatredBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatredBooksCubit, FeatredBooksState>(
      builder: (context, state) {
        if (state is FeatredBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .265,
            child: ListView.separated(
              padding: const EdgeInsets.only(left: kPaddingHor),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomBookImage(
                imageUrl:
                    state.books[index].volumeInfo?.imageLinks?.thumbnail ?? '',
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemCount: state.books.length,
            ),
          );
        } else if (state is FeatredBooksFailure) {
          return CustomFailureWidget(errMessage: state.errMessage);
        } else {
          return SizedBox(
              height: MediaQuery.of(context).size.height * .265,
              child: const CustomLoadingWidget());
        }
      },
    );
  }
}
