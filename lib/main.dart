import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:mmproj/constants.dart';
import 'package:mmproj/core/utils/app_router.dart';
import 'package:mmproj/core/utils/functions/setup_service_locator.dart';
import 'package:mmproj/core/utils/simple_bloc_observer.dart';
import 'package:mmproj/features/home/data/repos/home_repo_impl.dart';
import 'package:mmproj/features/home/domain/entities/book_entity.dart';
import 'package:mmproj/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:mmproj/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:mmproj/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:mmproj/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setupServiceLocator();
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              FetchFeaturedBooksUseCase(
                getIt.get<HomeRepoImpl>(),
              ),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBooksCubit(
              FetchNewestBooksUseCase(
                getIt.get<HomeRepoImpl>(),
              ),
            );
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        // home: const SplashView(),
      ),
    );
  }
}
