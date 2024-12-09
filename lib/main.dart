import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_ce/hive.dart';
import 'package:mmproj/constants.dart';
import 'package:mmproj/core/utils/app_router.dart';
import 'package:mmproj/features/home/domain/entities/book_entity.dart';
// import 'package:mmproj/features/splash/presentation/views/splash_view.dart';

void main() async {
  runApp(const Bookly());

  Hive.registerAdapter(BookEntityAdapter());

  await Hive.openBox(kFeaturedBox);
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      // home: const SplashView(),
    );
  }
}
