import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 70),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 22,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: Iconify(
                IconsData.searchIcon,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
