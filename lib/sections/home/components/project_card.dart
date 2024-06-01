import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';
import '../../../responsive.dart';

class ProjectCard extends StatefulWidget {
  final Project project;
  const ProjectCard({
    super.key,
    required this.project,
  });

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool isExpanded = false;
  late PageController _pageController;
  int currentPage = 0;
  List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _animation = TweenSequence([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: -pi / 2), weight: 0.5),
      TweenSequenceItem(tween: Tween(begin: pi / 2, end: 0.0), weight: 0.5),
    ]).animate(_animationController);
    _pageController = PageController();

    // initialize the pages
    pages = [
      FrontCard(
        project: widget.project,
        context: context,
      ),
      ProjectInfoCard(project: widget.project, context: context),
      ProjectLanguagesCard(project: widget.project, context: context),
      ProjectPictures(project: widget.project)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          // change the current page to the next page or back to the first page
          currentPage = (currentPage + 1) % pages.length;
          _animationController.forward().then((value) {
            _animationController.reverse();
          });
        });
      },
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(_animation.value),
            child: pages.isNotEmpty ? pages[currentPage] : Container(),
          );
        },
      ),
    );
  }
}

class FrontCard extends StatefulWidget {
  final Project project;
  final BuildContext context;

  const FrontCard({
    super.key,
    required this.project,
    required this.context,
  });

  @override
  _FrontCardState createState() => _FrontCardState();
}

class _FrontCardState extends State<FrontCard> {
  bool isExpanded = false;
  final textStyle = const TextStyle(height: 1.5);
  final maxLines = 4;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.start,
        runAlignment: WrapAlignment.spaceBetween,
        children: [
          Text(
            widget.project.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 10),
          Text(
            widget.project.description,
            maxLines: isExpanded
                ? null
                : Responsive.isMobileLarge(context)
                    ? 3
                    : 4,
            overflow: isExpanded ? null : TextOverflow.ellipsis,
            style: textStyle,
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: !isExpanded
                ? const Text(
                    "Read More...",
                    style: TextStyle(color: primaryColor),
                  )
                : const Text(
                    "Show Less",
                    style: TextStyle(color: primaryColor),
                  ),
          ),
        ],
      ),
    );
  }
}

class ProjectInfoCard extends StatelessWidget {
  const ProjectInfoCard({
    super.key,
    required this.project,
    required this.context,
  });

  final Project project;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Additional Info",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            ...project.additionalInfo.map(
              (info) => Text(
                info,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: bodyTextColor,
                      height: 1.5,
                    ),
              ),
            ),
            Text(
              "User Types",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            ...project.userTypes.map((type) => Text(type)),
            Text(
              "Technologies",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            ...project.technologies.map((tech) => Text(tech.name)),
          ],
        ),
      ),
    );
  }
}

class ProjectLanguagesCard extends StatelessWidget {
  const ProjectLanguagesCard({
    super.key,
    required this.project,
    required this.context,
  });

  final Project project;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      color: secondaryColor,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Languages",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(
              height: 10,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(top: 0),
              itemCount: project.technologies.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
                crossAxisSpacing: 2,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (context, index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.black,
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: ClipOval(
                                clipBehavior: Clip.antiAlias,
                                child: SvgPicture.asset(
                                  project.technologies[index].icon,
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      project.technologies[index].name,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 12),
                    ), // Adjust as needed
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPictures extends StatefulWidget {
  final Project project;
  const ProjectPictures({super.key, required this.project});

  @override
  _ProjectPicturesState createState() => _ProjectPicturesState();
}

class _ProjectPicturesState extends State<ProjectPictures> {
  late CarouselSliderController _sliderController;
  // bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _sliderController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          controller: _sliderController,
          unlimitedMode: true,
          slideBuilder: (index) {
            return Image.asset(
              widget.project.images[index],
              fit: BoxFit.cover,
            );
          },
          slideTransform: const CubeTransform(),
          itemCount: widget.project.images.length,
        ),
        Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                iconSize: 30,
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  _sliderController.previousPage();
                },
              ),
              IconButton(
                iconSize: 30,
                icon: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  _sliderController.nextPage();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
