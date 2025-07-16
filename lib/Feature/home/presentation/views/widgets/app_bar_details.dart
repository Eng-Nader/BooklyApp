import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarDetials extends StatelessWidget {
  const AppBarDetials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.close,
            color: Colors.white,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            color: Colors.white,
            Icons.shopping_cart,
            size: 30,
          ),
        )
      ],
    );
  }
}
