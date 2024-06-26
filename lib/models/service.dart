// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;

  Service(
      {required this.id,
      required this.title,
      required this.image,
      required this.color});
}

List<Service> services = [
  Service(
      id: 1,
      title: "title",
      image: "assets/images/graphic.png",
      color: Color(0xFFD9FFFC)),
  Service(
      id: 2,
      title: "title",
      image: "assets/images/desktop.png",
      color: Color(0xFFE4FFC7)),
  Service(
      id: 3,
      title: "title",
      image: "assets/images/ui.png",
      color: Color(0xFFFFF3DD)),
  Service(
      id: 4,
      title: "title",
      image: "assets/images/Intreaction_design.png",
      color: Color(0xFFFFE0E0)),
];
