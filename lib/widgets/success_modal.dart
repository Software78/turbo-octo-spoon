import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../views/dispatch/controller.dart';
import 'custom_text.dart';

class SuccessModal extends StatelessWidget {
  final DispatchController controller;
  const SuccessModal({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30.w, 15.h, 30.w, 0),
      width: double.infinity,
      height: 380.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 66.w,
            height: 4.h,
            color: const Color(0xff656C6C),
          ),
          SizedBox(
            height: 36.h,
          ),
          Image.asset("assets/images/icons/success_image.png"),
          CustomText(
            fontWeight: FontWeight.w700,
            text: "delivery-logged",
            fontSize: 20.sp,
            color: const Color(0xff54565B),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 90.h,
          ),
          SizedBox(
            height: 56.h,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                controller.addedDispatchHandler();
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffE1261C),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.r))),
              child: Text("close",
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w700))
                  .tr(),
            ),
          ),
        ],
      ),
    );
  }
}
