import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLoadingIndcator extends StatelessWidget {
  const CustomLoadingIndcator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 200,
        width: 200,
        child: Lottie.asset('assets/images/Glow loading.json'),
      ),
    );
  }
}
