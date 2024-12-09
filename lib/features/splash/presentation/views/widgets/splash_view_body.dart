import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mmproj/core/utils/app_router.dart';
// import 'package:mmproj/core/utils/app_router.dart';
// import 'package:get/get.dart';
// import 'package:mmproj/constants.dart';
import 'package:mmproj/core/utils/assets.dart';
// import 'package:mmproj/features/auth/auth.dart';
// import 'package:mmproj/features/home/presentation/views/home_view.dart';
import 'package:mmproj/features/splash/presentation/views/widgets/sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 150, child: Image.asset(AssetsData.logo)),
        SlidingText(
            animationController: animationController,
            slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
    // slidingAnimation.addListener(() {
    //   setState(() {});
    // });
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // Get.to(
        //   () => const HomeView(),
        //   transition: Transition.fade,
        //   duration: kTransitionDuration,
        // );
        GoRouter.of(context).push(AppRouter.kHomeView);
      },
    );
  }
}
