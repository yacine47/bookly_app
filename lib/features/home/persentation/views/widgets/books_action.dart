import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: CustomButton(
          backgroundColor: Colors.white,
          titleColor: Colors.black,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18), bottomLeft: Radius.circular(18)),
          title: '19.99€',
        )),
        Expanded(
            child: CustomButton(
          backgroundColor: Color(0xffEF8262),
          title: 'Free Preview',
          titleColor: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(18),
            topRight: Radius.circular(18),
          ),
        )),
      ],
    );
  }
}
