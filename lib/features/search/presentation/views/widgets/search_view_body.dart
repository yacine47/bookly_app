import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_resault_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kPaddingHor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24),
                CustomTextField(
                  hint: 'Search Book',
                ),
                SizedBox(height: 24),
                Text('Search Resault', style: Styles.textStyle18),
                SizedBox(height: 24),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SearchResaultListView(),
        )
      ],
    );
  }
}
