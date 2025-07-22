import 'package:bookly_app/Feature/Splash/presentation/views/splash_view.dart';
import 'package:bookly_app/Feature/home/presentation/views/home_details_view.dart';
import 'package:bookly_app/Feature/home/presentation/views/home_view.dart';
import 'package:bookly_app/Feature/search/presentation/view/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const khomeView = '/homeView';
  static const khomeDetails = '/homeDetails';
  static const ksearchView = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: khomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: khomeDetails,
        pageBuilder: (context, state) {
          return const CupertinoPage(
            child: HomeDetailsView(),
          );
        },
      ),
      GoRoute(
        path: ksearchView,
        pageBuilder: (context, state) {
          return const CupertinoPage(
            child: SearchView(),
          );
        },
      )
    ],
  );
}
