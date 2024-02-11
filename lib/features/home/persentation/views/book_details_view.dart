import 'package:bookly_app/features/home/persentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});
  static String path = '/BookDetailsView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: CustomBookImage()),
    );
  }
}
