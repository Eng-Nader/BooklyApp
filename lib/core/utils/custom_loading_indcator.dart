import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLoadingIndcator extends StatelessWidget {
  const CustomLoadingIndcator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 130,
        width: 130,
        child: Lottie.asset(AssetsData.kIndicator),
      ),
    );
  }
}
