import 'package:chris_wright_portfolio/constants.dart';
import 'package:chris_wright_portfolio/sections/components/achievement.dart';
import 'package:flutter/material.dart';

import '../../responsive.dart';

class AchievementSection extends StatelessWidget {
  const AchievementSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Achievement(
                      animation: AnimatedDecimal(
                        number: 3.93,
                      ),
                      label: "GPA",
                    ),
                    Achievement(
                      animation: AnimatedText(
                        text: "Associate's",
                      ),
                      label: "Degree",
                    ),
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Achievement(
                      animation: AnimatedText(
                        text: "CSET",
                      ),
                      label: "Applied Science",
                    ),
                  ],
                ),
              ],
            )
          : const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Achievement(
                  animation: AnimatedDecimal(
                    number: 3.93,
                  ),
                  label: "GPA",
                ),
                Achievement(
                  animation: AnimatedText(
                    text: "Associate's",
                  ),
                  label: "Degree",
                ),
                Achievement(
                  animation: AnimatedText(
                    text: "CSET",
                  ),
                  label: "Applied Science",
                ),
              ],
            ),
    );
  }
}
