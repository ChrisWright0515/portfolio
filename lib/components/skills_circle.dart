import 'package:chris_wright_portfolio/constants.dart';
import 'package:flutter/material.dart';

class SkillsCircle extends StatelessWidget {
  const SkillsCircle({
    super.key,
    required this.skillName,
    required this.skillPercentage,
  });
  final double skillPercentage;
  final String skillName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: skillPercentage),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text("${(value * 100).toInt()}%",
                      style: Theme.of(context).textTheme.titleMedium),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: defaultPadding / 2),
        Text(
          skillName,
          style: Theme.of(context).textTheme.titleSmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}




class LanguagesProgressBar extends StatelessWidget {
  const LanguagesProgressBar({
    super.key,
    required this.languagePercentage,
    required this.languageName,
  });

  final double languagePercentage;
  final String languageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: languagePercentage),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  languageName,
                  style: const TextStyle(color: Colors.white),
                ),
                Text("${(value * 100).toInt()}%"),
              ],
            ),
            const SizedBox(height: defaultPadding / 2),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}
