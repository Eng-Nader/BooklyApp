import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            height: 24.5,
            width: 80.46,
            AssetsData.klogo,
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.ksearchView);
            },
            icon: const Icon(
              color: Colors.white,
              size: 25,
              FontAwesomeIcons.magnifyingGlass,
            ),
          )
        ],
      ),
    );
  }
}
