import 'package:bookly_app/Feature/home/presentation/views/widgets/home_details_body.dart';
import 'package:flutter/material.dart';

class HomeDetailsView extends StatelessWidget {
  const HomeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: HomeDetailsBody(),
      ),
    );
  }
}
