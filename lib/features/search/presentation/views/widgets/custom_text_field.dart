import 'package:bookly_app/core/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.maxLines = 1,
    required this.hint,
    this.onChanged,
    // this.controller,

    this.keyboardType = TextInputType.text,
    this.onPressed,
  });
  // final TextEditingController? controller;
  final int maxLines;
  final String hint;
  final void Function(String?)? onChanged;
  final TextInputType? keyboardType;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: keyboardType,
      cursorColor: Colors.white,
      decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Iconify(
                IconsData.searchIcon,
                color: Colors.white,
              ),
            ),
          ),
          suffixIconColor: Colors.white,
          contentPadding:
              const EdgeInsets.only(bottom: 18, top: 18, left: 18, right: 18),
          hintText: hint,
          label: Text(
            hint,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          hintStyle: const TextStyle(color: Colors.white),
          border: buildBorder(),
          enabledBorder: buildBorder(color: Colors.white.withOpacity(0.45)),
          focusedBorder: buildBorder(color: Colors.white)),
    );
  }

  OutlineInputBorder buildBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
