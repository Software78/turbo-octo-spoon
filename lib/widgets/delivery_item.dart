import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_text.dart';

class DeliveryItem extends StatelessWidget {
  const DeliveryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: REdgeInsets.fromLTRB(16.r, 16.r, 16.r, 0),
          height: 72.h,
          width: 337.w,
          decoration: BoxDecoration(
            color: const Color(0xfffcfcfc),
            border: Border(
              top: BorderSide(
                  color: const Color(0xffe8e8e8),
                  width: 1.w,
                  style: BorderStyle.solid),
              left: BorderSide(
                  color: const Color(0xffe8e8e8),
                  width: 1.w,
                  style: BorderStyle.solid),
              right: BorderSide(
                  color: const Color(0xffe8e8e8),
                  width: 1.w,
                  style: BorderStyle.solid),
              bottom: BorderSide(
                  color: const Color(0xffe8e8e8),
                  width: 1.w,
                  style: BorderStyle.solid),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r),
              topRight: Radius.circular(8.r),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  CustomText(
                    text: "CGE - 123XYZ",
                    color: const Color(0xff54565B),
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp,
                  ),
                  const Spacer(),
                  Container(
                    padding: REdgeInsets.symmetric(horizontal: 4.sp),
                    decoration: BoxDecoration(
                      color: const Color(0xffE1261C),
                      // border: Border.all(color: const Color(0xffe8e8e8),),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.r),
                        bottomLeft: Radius.circular(4.r),
                      ),
                    ),
                    // width: 40.w,
                    height: 18.h,
                    child: Center(
                      child: CustomText(
                        text: "MAIZE",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  Container(
                    padding: REdgeInsets.symmetric(horizontal: 4.sp),
                    decoration: BoxDecoration(
                      color: const Color(0xff54565B),
                      // border: Border.all(color: const Color(0xffe8e8e8)),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4.r),
                        bottomRight: Radius.circular(4.r),
                      ),
                    ),
                    // width: 40.w,
                    height: 18.h,
                    child: Center(
                      child: CustomText(
                        text: "33 MT",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xffFFFFFF),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                      "assets/illustrations/location-crosshairs.svg"),
                  SizedBox(
                    width: 4.w,
                  ),
                  CustomText(
                    text: "AFTL_Saminaka",
                    color: const Color(0xff7C827D),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  SvgPicture.asset("assets/illustrations/red-arrow.svg"),
                  SizedBox(
                    width: 7.w,
                  ),
                  SvgPicture.asset("assets/illustrations/location-person.svg"),
                  SizedBox(
                    width: 4.w,
                  ),
                  CustomText(
                    text: "Animal Care",
                    color: const Color(0xff7C827D),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: REdgeInsets.symmetric(horizontal: 15.r, vertical: 3.5.r),
          decoration: BoxDecoration(
            color: const Color(0xff656C6C),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8.r),
              bottomRight: Radius.circular(8.r),
            ),
          ),
          width: 337.w,
          height: 22.h,
          child: Row(
            children: [
              CustomText(
                text: "10:00 AM",
                fontSize: 8.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
              CustomText(
                text: "TUE 12 JAN, 2021",
                fontSize: 8.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
              const Spacer(),
              CustomText(
                text: "ID: OTC-363-22573378487015320ß",
                fontSize: 8.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ],
          ),
        )
      ],
    );
  }
}
