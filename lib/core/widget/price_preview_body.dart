import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PricePreviewBody extends StatelessWidget {
  const PricePreviewBody({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.borderRadius,
  });
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
