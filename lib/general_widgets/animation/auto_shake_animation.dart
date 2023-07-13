 import 'package:flutter/material.dart';

class CustomShakeAnimation extends StatefulWidget {
  final Widget child;
  const CustomShakeAnimation({super.key , required this.child});

  @override
  State<CustomShakeAnimation> createState() => _CustomShakeAnimationState();
}

class _CustomShakeAnimationState extends State<CustomShakeAnimation> with TickerProviderStateMixin {

  late AnimationController _animationController;

  late Animation<double> _shakeAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    )..repeat(reverse: true);

    _shakeAnimation = Tween<double>(begin: -5.0, end: 5.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(_shakeAnimation.value, 0.0),
                  child: child,
                );
              },
              child:  widget.child,
            );
  }
}