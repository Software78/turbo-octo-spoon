import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../mvc/mvc.dart';
import '../../widgets/custom_form_field.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/modals.dart';

part 'view.dart';

class DashboardDeliveryScreen extends StatefulWidget {
  const DashboardDeliveryScreen({Key? key}) : super(key: key);

  @override
  State<DashboardDeliveryScreen> createState() => DashboardDeliveryController();
}

class DashboardDeliveryController extends State<DashboardDeliveryScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation sizeAnimation;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController volumeController;
  late TextEditingController bagController;
  late TextEditingController commentController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    sizeAnimation =
        Tween<double>(begin: 118.h, end: 238.h).animate(animationController);
    animationController.addListener(() {
      setState(() {});
    });
    volumeController = TextEditingController();
    bagController = TextEditingController();
    commentController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    volumeController.dispose();
    bagController.dispose();
    commentController.dispose();
    super.dispose();
  }

  playContainerAnimation() {
    animationController.value == 0.0
        ? animationController.forward()
        : animationController.reverse();
  }

  returnToPreviousScreen() {
    Navigator.pop(context);
  }


  submit() {
    if (formKey.currentState!.validate()) {
      showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.r),
            topLeft: Radius.circular(20.r),
          ),
        ),
        builder: (context) => ConfirmDeliveryModal(
          
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return DashboardDeliveryView(this);
  }
}
