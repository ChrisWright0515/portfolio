import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chris_wright_portfolio/constants.dart';
import 'package:flutter/material.dart';

import '../../../responsive.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3.5,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/background.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hi, I'm Chris Wright",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white)
                      : Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                const MyAnimatedText(),
                // const SizedBox(height: defaultPadding),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding * 2,
                            vertical: defaultPadding),
                        backgroundColor: primaryColor),
                    child: const Text(
                      "Contact Me",
                      style: TextStyle(color: darkColor),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyAnimatedText extends StatelessWidget {
  const MyAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleMedium!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context))
            const TagStyleText(
              text: "p",
            ),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          const Text("I'm a "),
          Responsive.isMobile(context)
              ? const Expanded(child: AnimatedTypedText())
              : const AnimatedTypedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) const TagStyleText(text: "p"),
        ],
      ),
    );
  }
}

class AnimatedTypedText extends StatelessWidget {
  const AnimatedTypedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        TyperAnimatedText(
          "Full Stack Developer",
          speed: const Duration(milliseconds: 75),
        ),
        TyperAnimatedText(
          "Software Engineer",
          speed: const Duration(milliseconds: 75),
        ),
        TyperAnimatedText(
          "Tech Enthusiast",
          speed: const Duration(milliseconds: 75),
        ),
      ],
    );
  }
}

class TagStyleText extends StatelessWidget {
  const TagStyleText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: text,
            style: const TextStyle(color: primaryColor),
          ),
          const TextSpan(
            text: ">",
          ),
        ],
      ),
    );
  }
}
