import 'package:bookly_app/core/widgets/book_item_loading_list_view.dart';
import 'package:flutter/material.dart';

class SearchResaultListView extends StatelessWidget {
  const SearchResaultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      // itemBuilder: (context, index) => const BookItemListView(),
      itemBuilder: (context, index) => const BookItemLoadingListView(),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: 80,
    );
  }
}
