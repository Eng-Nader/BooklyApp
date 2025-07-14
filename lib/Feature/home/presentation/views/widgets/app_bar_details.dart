import 'package:flutter/material.dart';

class AppBarDetials extends StatelessWidget {
  const AppBarDetials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart,
          ),
        )
      ],
    );
  }
}
