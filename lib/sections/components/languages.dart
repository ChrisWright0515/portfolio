import 'package:chris_wright_portfolio/components/skills_circle.dart';
import 'package:chris_wright_portfolio/constants.dart';
import 'package:flutter/material.dart';

class Languages extends StatelessWidget {
  const Languages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Languages",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const LanguagesProgressBar(
            languageName: "HTML", languagePercentage: 0.9),
        const LanguagesProgressBar(
            languageName: "CSS", languagePercentage: 0.9),
        const LanguagesProgressBar(
            languageName: "JavaScript", languagePercentage: 0.85),
        const LanguagesProgressBar(
            languageName: "Python", languagePercentage: 0.75),
        const LanguagesProgressBar(
            languageName: "PHP", languagePercentage: 0.75),
        const LanguagesProgressBar(
            languageName: "Java", languagePercentage: 0.75),
        const LanguagesProgressBar(
            languageName: "Dart", languagePercentage: 0.65),
      ],
    );
  }
}
