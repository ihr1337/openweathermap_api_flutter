import 'package:flutter/material.dart';

class SlideinFromBottomWidget extends StatelessWidget {
  final bool initializeAnimation;
  final Duration animationDuration;
  final double finalPotision;
  final Duration opacityChangeDuration;
  final Widget child;

  const SlideinFromBottomWidget({
    super.key,
    required this.initializeAnimation,
    required this.animationDuration,
    required this.finalPotision,
    required this.opacityChangeDuration,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      bottom: initializeAnimation ? finalPotision : 0,
      curve: Curves.fastOutSlowIn,
      duration: animationDuration,
      child: AnimatedOpacity(
        opacity: initializeAnimation ? 1 : 0,
        duration: opacityChangeDuration,
        child: child,
      ),
    );
  }
}
