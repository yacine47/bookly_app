import 'package:bookly_app/features/home/persentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly_app/features/home/persentation/views/widgets/title_meduim.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeatredBooksListView(),
              SizedBox(height: 46),
              TitleMeduim(),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}
