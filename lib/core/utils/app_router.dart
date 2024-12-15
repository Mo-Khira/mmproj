import 'package:go_router/go_router.dart';
import 'package:mmproj/features/auth/auth.dart';
import 'package:mmproj/features/auth/widgets/sign_in.dart';
import 'package:mmproj/features/home/presentation/views/book_details_view.dart';
import 'package:mmproj/features/home/presentation/views/home_view.dart';
import 'package:mmproj/features/search/presentation/views/search_view.dart';
import 'package:mmproj/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static const kSignInView = '/signInView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      // GoRoute(
      //   path: kBookDetailsView,
      //   builder: (context, state) => const BookDetailsView(),
      // ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;
          final image = data["image"] as String?;
          final title = data["title"] as String?;
          final authorName = data["authorName"] as String?;
          final ratingAverage = data["rate"] as num?;
          return BookDetailsView(
            image: image,
            authorName: authorName,
            ratingAverage: ratingAverage,
            title: title,
          );
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kSignInView,
        builder: (context, state) => const LoginPage(),
      ),
    ],
  );
}
