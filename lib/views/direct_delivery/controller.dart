import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../mvc/mvc.dart';
import '../../widgets/custom_form_field.dart';
import '../../widgets/custom_text.dart';
import '../dashboard_delivery/controller.dart';

part 'view.dart';

class DirectDeliveryScreen extends StatefulWidget {
  const DirectDeliveryScreen({Key? key}) : super(key: key);

  @override
  State<DirectDeliveryScreen> createState() => DirectDeliveryController();
}

class DirectDeliveryController extends State<DirectDeliveryScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  submit() {
    if (formKey.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return DirectDeliveryView(this);
  }
}
