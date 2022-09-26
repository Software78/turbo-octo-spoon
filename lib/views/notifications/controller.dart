import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../mvc/mvc.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/notification.dart';

part 'view.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => NotificationsController();
}

class NotificationsController extends State<NotificationsScreen> {
  returnToPreviousScreen() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return NotificationsView(this);
  }
}
