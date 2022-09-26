import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_text.dart';

class NotificationBox extends StatelessWidget {
  const NotificationBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.fromLTRB(12.r, 9.r, 14.r, 10.r),
      // height: 200,
      // width: 100,
      decoration: BoxDecoration(
          color: const Color(0xffFCFCFC),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: const Color(0xffEBEFF2))),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset("assets/illustrations/Rectangle.svg"),
              SizedBox(
                width: 10.w,
              ),
              CustomText(
                text: "AFTL_Saminaka to Animal Care",
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xff383838),
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.r),
            child: const Text(
                "A new dispatch request just came in - check it to resolve."),
          ),
          SizedBox(
            height: 10.h,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: CustomText(
              text: "2022-07-21  12:20 PM",
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xff8B908B),
            ),
          )
        ],
      ),
    );
  }
}
