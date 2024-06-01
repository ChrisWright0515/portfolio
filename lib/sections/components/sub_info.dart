import 'package:chris_wright_portfolio/constants.dart';
import 'package:flutter/material.dart';


class SubInfo extends StatelessWidget {
  const SubInfo({
    super.key,
    required this.title,
    required this.text,
  });

  final String? title, text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title!, style: const TextStyle(color: Colors.white)),
          Text(text!)
        ],
      ),
    );
  }
}
