import 'package:exercise/screen/controller/dispatch.dart';
import 'package:exercise/screen/view/stateless_view.dart';
import 'package:exercise/screen/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              weight: FontWeight.w400,
              text: labelText,
              size: 12.sp,
              color: const Color(0xff47494E),
              align: TextAlign.center),
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
