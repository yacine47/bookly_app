import 'package:flutter/material.dart';

class CustomSlidingAnimation extends StatelessWidget {
  const CustomSlidingAnimation({
    super.key,
    required this.slidingAnimationText,
    required this.child,
  });

  final Animation<Offset> slidingAnimationText;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimationText,
      builder: (context, _) => SlideTransition(
        position: slidingAnimationText,
        child: child,
      ),
    );
  }
}
