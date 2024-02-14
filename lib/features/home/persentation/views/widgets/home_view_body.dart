import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/newset_books_list_view.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const FeatredBooksListView(),
              const SizedBox(height: 46),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPaddingHor),
                child: Text('Best Seller',
                    style: Styles.textStyle18.copyWith(
                      fontWeight: FontWeight.bold,
                    )),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: NewsetBooksListView(),
        ),
      ],
    );
  }
}
