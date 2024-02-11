import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TitleMeduim extends StatelessWidget {
  const TitleMeduim({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingHor),
      child: Text('Best Seller',
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
