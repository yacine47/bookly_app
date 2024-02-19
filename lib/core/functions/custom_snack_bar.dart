import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

void customSnackBar(context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.black,
      content: Center(
        child: Text(
          msg,
          style: Styles.textStyle16.copyWith(
            color: Colors.white,
          ),
        ),
      )));
}
