import 'package:bookly_app/core/widgets/book_item_loading_list_view.dart';
import 'package:bookly_app/core/widgets/custom_failure_widget.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/book_item_list_view_item.dart';
import 'package:bookly_app/features/search/presentation/view_models/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResaultListView extends StatelessWidget {
  const SearchResaultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchFailure) {
          return CustomFailureWidget(errMessage: state.errMessage);
        } else if (state is SearchLoading) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            // itemBuilder: (context, index) => const BookItemListView(),
            itemBuilder: (context, index) => const BookItemLoadingListView(),
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemCount: 80,
          );
        } else if (state is SearchSuccess) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => BookItemListView(
              bookModel: state.books[index],
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemCount: state.books.length,
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
// BookItemListView