import 'package:flutter/material.dart';

class AnimatedIconButton extends StatefulWidget {
  const AnimatedIconButton({
    required this.onPressed,
    required this.iconData,
    Key? key,
  }) : super(key: key);

  final VoidCallback onPressed;
  final IconData iconData;

  @override
  _AnimatedIconButtonState createState() => _AnimatedIconButtonState();
}

class _AnimatedIconButtonState extends State<AnimatedIconButton> with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        if (_animationController.value == 1) {
          _animationController.reverse();
        } else if (_animationController.value == 0) {
          _animationController.forward();
        }
      },
      child: RotationTransition(
        turns: Tween<double>(begin: 0, end: 1).animate(
          _animationController,
        ),
        child: IconButton(
          onPressed: widget.onPressed,
          icon: Icon(
            widget.iconData,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
      ),
    );
  }
}
