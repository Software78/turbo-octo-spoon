import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../mvc/mvc.dart';
import '../views/dispatch/controller.dart';
import 'custom_text.dart';

class CustomTextField
    extends StatelessView<DispatchScreen, DispatchController> {
  final String labelText;
  const CustomTextField(DispatchController state,
      {Key? key, required this.labelText})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48.h,
      child: TextField(
        decoration: InputDecoration(
          filled: false,
          fillColor: const Color(0xffF2F2F2),
          label: CustomText(
              fontWeight: FontWeight.w400,
              text: labelText,
              fontSize: 12.sp,
              color: const Color(0xff47494E),
              textAlign: TextAlign.center),
          enabled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 2.w,
              color: const Color(0xffDEDDDC),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 2.w,
              color: const Color(0xffDEDDDC),
            ),
          ),
        ),
      ),
    );
  }
}
