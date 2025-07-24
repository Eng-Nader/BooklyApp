import 'package:bookly_app/Feature/Splash/presentation/views/splash_view.dart';
import 'package:bookly_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/data/repos/home_repo_implement.dart';
import 'package:bookly_app/Feature/home/presentation/manger/similar_book_cubit.dart/similar_book_cubit.dart';
import 'package:bookly_app/Feature/home/presentation/views/home_details_view.dart';
import 'package:bookly_app/Feature/home/presentation/views/home_view.dart';
import 'package:bookly_app/Feature/search/data/repos/search_repo_implement.dart';
import 'package:bookly_app/Feature/search/presentation/view/search_view.dart';
import 'package:bookly_app/Feature/search/presentation/view_model/search_cubit/search_cubit.dart';
import 'package:bookly_app/core/utils/servers_locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          return CupertinoPage(
            child: BlocProvider(
              create: (context) =>
                  SimilarBookCubit(getit.get<HomeRepoImplement>()),
              child: HomeDetailsView(book: state.extra as BookModel),
            ),
          );
        },
      ),
      GoRoute(
        path: ksearchView,
        pageBuilder: (context, state) {
          return CupertinoPage(
            child: BlocProvider(
              create: (context) =>
                  SearchCubit(getit.get<SearchRepoImplement>()),
              child: const SearchView(),
            ),
          );
        },
      )
    ],
  );
}
