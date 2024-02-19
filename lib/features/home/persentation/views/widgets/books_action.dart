import 'package:bookly_app/core/functions/custom_snack_bar.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomButton(
          bookModel: bookModel,
          onPressed: () async {
            await downloadBook(context);
          },
          backgroundColor: Colors.white,
          titleColor: Colors.black,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18), bottomLeft: Radius.circular(18)),
          title: 'Download',
        )),
        Expanded(
            child: CustomButton(
          bookModel: bookModel,
          onPressed: () async {
            await readBook(context);
          },
          backgroundColor: const Color(0xffEF8262),
          title: 'Free Preview',
          titleColor: Colors.white,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(18),
            topRight: Radius.circular(18),
          ),
        )),
      ],
    );
  }

  Future<void> readBook(context) async {
    final String urlString = bookModel.volumeInfo?.previewLink ?? '';
    final Uri url = Uri.parse(urlString);
    if (await launchUrl(url) && urlString.isEmpty) {
      await launchUrl(url);
    } else {
      customSnackBar(context, 'The book not found');
    }
  }

  Future<void> downloadBook(context) async {
    final bool bookisAvailable =
        bookModel.accessInfo?.pdf?.isAvailable ?? false;
    final String stringUrl = bookModel.accessInfo?.pdf?.acsTokenLink ?? '';
    if (!bookisAvailable) {
      final Uri url = Uri.parse(stringUrl);
      if (await launchUrl(url) && stringUrl.isEmpty) {
        await launchUrl(url);
      }
    } else {
      customSnackBar(context, 'The book not found');
    }
  }
}
