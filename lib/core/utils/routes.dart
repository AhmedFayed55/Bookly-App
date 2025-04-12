import 'package:bookly_app/features/home/presentation/views/book_details_tab/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_tab/home_view.dart';
import 'package:bookly_app/features/search/search_view.dart';
import 'package:bookly_app/features/splash/presentaion/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes{

  static const String homeRoute = '/homeView';
  static const String bookDetailsRoute = '/bookDetails';
  static const String searchRoute = '/searchRoute';

  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: homeRoute,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: bookDetailsRoute,
      builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
      path: searchRoute,
      builder: (context, state) => const SearchView(),
      ),
  ],
);
}