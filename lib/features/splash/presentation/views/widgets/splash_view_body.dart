import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/persentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/custom_sliding_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimationLogo;
  late Animation<Offset> slidingAnimationText;

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
        CustomSlidingAnimation(
          slidingAnimationText: slidingAnimationLogo,
          child: Image.asset(AssetsData.logo),
        ),
        const SizedBox(height: 8),
        CustomSlidingAnimation(
          slidingAnimationText: slidingAnimationText,
          child: const Text(
            'Read Books For Free',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }

  void navigateToHome() {
    Future.delayed(
        const Duration(seconds: 3),
        () => Get.to(const HomeView(),
            transition: Transition.fade, duration: kTransitionDuration));
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    slidingAnimationLogo =
        Tween<Offset>(begin: const Offset(2, 0), end: Offset.zero)
            .animate(animationController);
    slidingAnimationText =
        Tween<Offset>(begin: const Offset(-2, 0), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
}
