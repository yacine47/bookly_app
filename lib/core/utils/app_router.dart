import 'package:bookly_app/features/home/persentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/persentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
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
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
