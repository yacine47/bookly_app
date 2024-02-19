import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.titleColor,
    required this.title,
    this.borderRadius,
    this.onPressed, required this.bookModel,
  });

  final Color backgroundColor;
  final Color titleColor;
  final String title;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(18),
          ),
          backgroundColor: backgroundColor,
        ),
        child: Text(
          title,
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.bold,
            color: titleColor,
          ),
        ),
      ),
    );
  }
}
