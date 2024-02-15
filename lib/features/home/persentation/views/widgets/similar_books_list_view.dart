import 'package:bookly_app/core/widgets/custom_book_image_loading.dart';
import 'package:bookly_app/core/widgets/custom_failure_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_widget.dart';
import 'package:bookly_app/features/home/persentation/view_models/similar_books_cubit/similarbooks_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarbooksCubit, SimilarbooksState>(
      builder: (context, state) {
        if (state is SimilarbooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .135,
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 0),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomBookImage(
                  imageUrl:
                      state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                          ''),
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemCount: state.books.length,
            ),
          );
        } else if (state is SimilarbooksFailure) {
          return CustomFailureWidget(errMessage: state.errMessage);
        } else {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .135,
            child: const CustomBookImageLoading(),
          );
        }
      },
    );
  }
}
