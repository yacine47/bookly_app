import 'package:bookly_app/core/widgets/custom_failure_widget.dart';
import 'package:bookly_app/features/home/persentation/view_models/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/book_item_list_view_item.dart';
import 'package:bookly_app/core/widgets/book_item_loading_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsetBooksListView extends StatelessWidget {
  const NewsetBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksFailure) {
          return CustomFailureWidget(errMessage: state.errMessage);
        }
        if (state is NewsetBooksSuccess) {
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
        }
        return const BookItemsLoading();
      },
    );
  }
}

// ListView.separated(
//       padding: EdgeInsets.zero,
//       physics: const NeverScrollableScrollPhysics(),
//       itemBuilder: (context, index) => const BestSellerListViewItem(),
//       separatorBuilder: (context, index) => const SizedBox(height: 20),
//       itemCount: 80,
//     );


// BookItemLoadingListView()