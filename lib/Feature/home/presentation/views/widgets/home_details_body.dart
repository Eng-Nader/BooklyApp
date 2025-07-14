import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class HomeDetailsBody extends StatelessWidget {
  const HomeDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        
        Container(
          height: MediaQuery.of(context).size.height * .4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: AssetImage(
                'assets/images/Test_Book_Photo.png',
              ),
            ),
          ),
        )
      ],
    );
  }
}
