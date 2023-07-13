import 'package:flutter/material.dart';

class SlideTransitionAnimation extends StatefulWidget {
  final Widget child;
  const SlideTransitionAnimation({super.key, required this.child});

  @override
  State<SlideTransitionAnimation> createState() => _SlideTransitionAnimationState();
}

class _SlideTransitionAnimationState extends State<SlideTransitionAnimation>with TickerProviderStateMixin  {


  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    // Define the slide animation
    _slideAnimation = Tween<Offset>(
      begin: Offset(1.0, 1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    // Start the animation
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(position: _slideAnimation,child: widget.child,);
  }
}