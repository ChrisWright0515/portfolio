import 'package:chris_wright_portfolio/constants.dart';
import 'package:flutter/material.dart';

class Achievement extends StatelessWidget {
  const Achievement({
    super.key,
    required this.animation,
    this.label,
  });
  final Widget animation;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        animation,
        // AnimatedDecimal(number: 3.93),
        const SizedBox(width: defaultPadding / 2),
        Text(
          label!,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}

class AnimatedDecimal extends StatelessWidget {
  const AnimatedDecimal({
    super.key,
    required this.number,
  });
  final double number;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: number),
      duration: defaultDuration,
      builder: (context, value, child) => Text(
        value.toStringAsFixed(2),
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(color: primaryColor),
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  final String text;

  const AnimatedText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<int>(
      tween: IntTween(begin: 0, end: text.length),
      duration: defaultDuration,
      builder: (context, value, child) {
        return Text(
          text.substring(0, value),
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: primaryColor,
              ),
        );
      },
    );
  }
}
