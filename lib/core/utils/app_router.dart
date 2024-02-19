import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/persentation/view_models/similar_books_cubit/similarbooks_cubit.dart';
import 'package:bookly_app/features/home/persentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/persentation/views/home_view.dart';
import 'package:bookly_app/features/search/data/repos/search_repo_impl.dart';
import 'package:bookly_app/features/search/presentation/view_models/search_cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: SplashView.path,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: HomeView.path,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: BookDetailsView.path,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarbooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(bookModel: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: SearchView.path,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchCubit(getIt.get<SearchRepoImpl>()),
          child: const SearchView(),
        ),
      ),
    ],
  );
}
