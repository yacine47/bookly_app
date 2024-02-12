import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/icons.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 70),
      padding: const EdgeInsets.fromLTRB(24, 70, 24, 30),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 22,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(SearchView.path);
              },
              icon: Iconify(
                IconsData.searchIcon,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
