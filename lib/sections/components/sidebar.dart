import 'package:chris_wright_portfolio/constants.dart';
import 'package:chris_wright_portfolio/sections/components/languages.dart';
import 'package:chris_wright_portfolio/sections/components/my_info.dart';
import 'package:chris_wright_portfolio/sections/components/my_skills.dart';
import 'package:chris_wright_portfolio/sections/components/other_skills.dart';
import 'package:chris_wright_portfolio/sections/components/sub_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  const SubInfo(title: "Address", text: "104 Lampeter Rd"),
                  const SubInfo(title: "Address", text: "104 Lampeter Rd"),
                  const SubInfo(title: "Age", text: "26"),
                  const MySkills(),
                  const SizedBox(height: defaultPadding),
                  const Languages(),
                  const OtherSkills(),
                  const Divider(),
                  const SizedBox(height: defaultPadding / 2),
                  TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            "Download CV",
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .color),
                          ),
                          const SizedBox(width: defaultPadding / 2),
                          SvgPicture.asset("assets/icons/download.svg")
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: defaultPadding / 2),
                    color: const Color(0xFF24242E),
                    child: Row(
                      children: [
                        const Spacer(),
                        IconButton(
                          onPressed: () async {
                            const String url = 'linkedin://';
                            if (await canLaunchUrl(url as Uri)) {
                              await launchUrl(url as Uri);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/github.svg"),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/twitter.svg"),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
