import 'package:bookly_app/features/home/persentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResaultListView extends StatelessWidget {
  const SearchResaultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const BookItemListView(),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: 80,
    );
  }
}
