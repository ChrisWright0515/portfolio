import 'package:chris_wright_portfolio/main_screen.dart';
import 'package:chris_wright_portfolio/sections/components/achievements_section.dart';
import 'package:chris_wright_portfolio/sections/home/components/hero_section.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/my_projects.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HeroSection(),
        AchievementSection(),
        MyProjects(),
        Column(
          children: [
            Text(
              "Contact Me",
              style: Theme.of(context).textTheme.titleLarge!,
            ),
            const SizedBox(height: defaultPadding),
            Container(
              width: 400,
              padding: const EdgeInsets.all(defaultPadding),
              color: secondaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Name",
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Email",
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Message",
                          ),
                        ),
                        const SizedBox(height: defaultPadding),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Send"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
