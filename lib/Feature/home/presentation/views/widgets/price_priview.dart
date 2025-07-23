import 'package:bookly_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/Functions/lauch_url.dart';
import 'package:bookly_app/core/widget/price_preview_body.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PriceBreview extends StatelessWidget {
  const PriceBreview({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PricePreviewBody(
            onPressed: () {},
            text: 'Free',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
          PricePreviewBody(
            onPressed: () {
              getLaunchUrl(
                bookModel.volumeInfo.previewLink!,
                context,
              );
            },
            text: getPreview(bookModel),
            backgroundColor: const Color(0xffEf8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
        ],
      ),
    );
  }
}

String getPreview(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink == null) {
    return 'Not Avalible';
  } else {
    return 'Free Preview';
  }
}
