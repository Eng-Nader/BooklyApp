import 'package:bookly_app/core/widget/price_preview_body.dart';
import 'package:flutter/material.dart';

class PriceBreview extends StatelessWidget {
  const PriceBreview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 16),
            child: PricePreviewBody(
              text: r'19.99 $',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 16),
            child: PricePreviewBody(
              text: 'Free Preview',
              backgroundColor: Color(0xffEf8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
