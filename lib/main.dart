import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/persentation/view_models/featured_books_cubit/featred_books_cubit.dart';
import 'package:bookly_app/features/home/persentation/view_models/newset_books_cubit/newset_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeatredBooksCubit>(
          create: (context) => FeatredBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
        BlocProvider<NewsetBooksCubit>(
          create: (context) => NewsetBooksCubit(getIt.get<HomeRepoImpl>()),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
