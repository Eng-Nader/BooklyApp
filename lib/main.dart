import 'package:bookly_app/Feature/home/data/repos/home_repo_implement.dart';
import 'package:bookly_app/Feature/home/presentation/manger/book_card_cubit/book_card_cubit.dart';
import 'package:bookly_app/Feature/home/presentation/manger/book_info_cubit/book_info_cubit.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/bloc_boserver_implent.dart';
import 'package:bookly_app/core/utils/servers_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUp();
  runApp(
    const BooklyApp(),
  );
  Bloc.observer = BlocBoserverImplent();
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BookCardCubit(
            getit.get<HomeRepoImplement>(),
          )..getBookCard(),
        ),
        BlocProvider(
          create: (context) => BookInforCubit(
            getit.get<HomeRepoImplement>(),
          )..getInfoBook(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
