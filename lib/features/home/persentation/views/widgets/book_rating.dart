import 'package:bookly_app/core/utils/icons.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Iconify(
          IconsData.startIcon,
          color: const Color(0xffFFDD4F),
          size: 19,
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(color: const Color(0xff7a7a7a)),
        )
      ],
    );
  }
}
