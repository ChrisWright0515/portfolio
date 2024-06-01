import 'package:chris_wright_portfolio/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OtherSkills extends StatelessWidget {
  const OtherSkills({
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
          child: Text("Other Skills",
              style: Theme.of(context).textTheme.titleSmall),
        ),
        const OtherSkillsText(text: "jQuery, THREE.js"),
        const OtherSkillsText(text: "TailwindCSS, Bootstrap"),
        const OtherSkillsText(text: "Git, GitHub"),
        const OtherSkillsText(text: "Microsoft Office"),
        const OtherSkillsText(text: "Visual Studio Code"),
        const OtherSkillsText(text: "Android Studio"),
        const OtherSkillsText(text: "npm"),
        const OtherSkillsText(text: "Postman"),
        const OtherSkillsText(text: "Trello"),
        const OtherSkillsText(text: "Selenium"),
      ],
    );
  }
}

class OtherSkillsText extends StatelessWidget {
  const OtherSkillsText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          const SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
