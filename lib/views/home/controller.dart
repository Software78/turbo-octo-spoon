import 'package:flutter/material.dart';

import '../../views/drawer/controller.dart';
import 'view.dart';

class HomeScreen extends StatefulWidget {
  final DrawerChecksController controller;
  const HomeScreen({Key? key, required this.controller}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeController();
}

class HomeController extends State<HomeScreen> {
  // double xOffset = 0;
  // double yOffset = 0;

  // bool isDrawerOpen = false;

  // setOffset(double x, double y, bool isOpen) {
  //   setState(() {
  //     xOffset = x;
  //     yOffset = y;
  //     isDrawerOpen = isOpen;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return HomeView(this);
  }
}
