import 'package:chris_wright_portfolio/components/skills_circle.dart';
import 'package:chris_wright_portfolio/constants.dart';
import 'package:flutter/material.dart';

class MySkills extends StatelessWidget {
  const MySkills({
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
            "Frameworks",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const Row(
          children: [
            Expanded(
              child: SkillsCircle(
                skillName: "Laravel",
                skillPercentage: 0.85,
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: SkillsCircle(
                skillName: "Flutter",
                skillPercentage: 0.75,
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: SkillsCircle(
                skillName: "Flask",
                skillPercentage: 0.75,
              ),
            ),
          ],
        )
      ],
    );
  }
}
