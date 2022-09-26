import 'package:exercise/screen/view/dispatch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DispatchScreen extends StatefulWidget {
  const DispatchScreen({Key? key}) : super(key: key);

  @override
  State<DispatchScreen> createState() => DispatchController();
}

class DispatchController extends State<DispatchScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;

  playContainerAnimation() {
    animationController.value == 0.0
        ? animationController.forward()
        : animationController.reverse();
  }

  returnToPreviousScreen() {
    Navigator.pop(context);
  }

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    animation =
        Tween<double>(begin: 140.h, end: 244.h).animate(animationController);
    animationController.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  bool showLogistics = false;
  bool addedDispatch = false;
  bool addDispatch = false;
  double initialHeight = 140.h;
  bool isOpen = false;

  toggleAnimation() {
    animationController.value == 0.0
        ? animationController.forward()
        : animationController.reverse();
  }

  expand() {
    setState(() {
      isOpen = true;
      initialHeight = 220.h;
    });
  }

  closeExpand() {
    setState(() {
      isOpen = false;
      initialHeight = 140.h;
    });
  }

  dispatchHandler() {
    setState(() {
      addDispatch = !addDispatch;
    });
  }

  addedDispatchHandler() {
    setState(() {
      addedDispatch = true;
    });
  }

  changeLogistics() {
    setState(() {
      showLogistics = !showLogistics;
    });
  }

  editDispatch() {
    setState(() {
      addedDispatch = false;
      addDispatch = true;
    });
  }

  bool secondScreen = false;

  toggleSecondScreen() {
    setState(() {
      secondScreen = !secondScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DispatchView(this);
  }
}
