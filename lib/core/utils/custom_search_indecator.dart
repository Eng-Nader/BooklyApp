import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomSearchIndecator extends StatelessWidget {
  const CustomSearchIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150 ,
      width: 150 ,
      child: Lottie.asset(AssetsData.kSearchLoading)
    ); 
  }
}