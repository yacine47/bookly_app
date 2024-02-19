import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/view_models/search_cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_resault_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  String searchBook = '';
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPaddingHor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                CustomTextField(
                  onChanged: (value) {
                    searchBook = value ?? '';
                  },
                  onPressed: () {
                    BlocProvider.of<SearchCubit>(context)
                        .fetchSearchResult(searchBook);
                  },
                  hint: 'Search Book',
                ),
                const SizedBox(height: 24),
                const Text('Search Resault', style: Styles.textStyle18),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SearchResaultListView(),
        )
      ],
    );
  }
}


// 