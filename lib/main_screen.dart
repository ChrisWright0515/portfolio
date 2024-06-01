import 'package:chris_wright_portfolio/constants.dart';
import 'package:chris_wright_portfolio/sections/components/sidebar.dart';
import 'package:flutter/material.dart';

import 'responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.children});

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
            ),
      drawer: const SideMenu(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // LEFT SIDE
              if (Responsive.isDesktop(context))
                const Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              // const SizedBox(width: defaultPadding),
              // RIGHT SIDE
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: children, // Children
                  ),
                ),
              ),
            ], // Children
          ),
        ),
      ),
    );
  }
}
