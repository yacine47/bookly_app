import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomFailureWidget extends StatelessWidget {
  const CustomFailureWidget({super.key, required this.errMessage});
  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingHor),
      child: Text(
        errMessage,
        textAlign: TextAlign.center,
        style: Styles.textStyle18,
      ),
    );
  }
}
