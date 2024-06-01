import 'package:chris_wright_portfolio/constants.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: bgColor,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 50,
              backgroundImage: ExactAssetImage(
                "assets/images/avatar.jpg",
              ),
              backgroundColor: Colors.transparent,
            ),
            const Spacer(flex: 2),
            Text(
              "Chris Wright",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Text(
              "Full Stack Developer",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
