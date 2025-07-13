import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        Container(
          color: Colors.red,
          height: 100,
          width: 120,
        ),
      ],
    );
  }
}
