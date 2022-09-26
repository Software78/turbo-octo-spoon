import 'package:flutter/material.dart';

import 'view.dart';

class DrawerChecks extends StatefulWidget {
  const DrawerChecks({Key? key}) : super(key: key);

  @override
  State<DrawerChecks> createState() => DrawerChecksController();
}

class DrawerChecksController extends State<DrawerChecks> {
  double xOffset = 0;
  double yOffset = 0;

  bool isDrawerOpen = false;
  bool tileExpand = false;

  expandTile() {
    tileExpand = !tileExpand;
    setState(() {});
  }

  setOffset(double x, double y, bool isOpen) {
    setState(() {
      xOffset = x;
      yOffset = y;
      isDrawerOpen = isOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DrawerView(this);
  }
}
