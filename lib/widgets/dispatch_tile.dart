import 'package:exercise/screen/controller/dispatch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_text.dart';

class DispatchTile extends StatelessWidget {
  final DispatchController controller;
  const DispatchTile({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        controller.changeLogistics();
      }),
      child: Container(
        margin: EdgeInsets.only(left: 19.w, right: 19.w),
        height: controller.showLogistics ? 205.h : 94.h,
        width: double.infinity,
        decoration: BoxDecoration(
            // color: const Color(0xfffcfcfc),
            color: const Color(0xfffcfcfc),
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(width: 1.w, color: Colors.grey[300]!)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0),
              child: Row(
                children: [
                  CustomText(
                      fontWeight: FontWeight.w700,
                      text: "CGE - 123XYZ",
                      fontSize: 18.sp,
                      color: const Color(0xff54565b),
                      textAlign: TextAlign.center),
                  const Spacer(),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4.r)),
                    height: 18.h,
                    width: 79.w,
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 18.h,
                          width: 40.w,
                          decoration: const BoxDecoration(
                              color: Color(0xffe1261c),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4),
                                  bottomLeft: Radius.circular(4))),
                          child: CustomText(
                              fontWeight: FontWeight.w700,
                              text: 'MAIZE',
                              fontSize: 10.sp,
                              color: Colors.white,
                              textAlign: TextAlign.center),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 18.h,
                          width: 39.w,
                          decoration: BoxDecoration(
                              color: const Color(0xff54565b),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(4.r),
                                  bottomRight: Radius.circular(4.r))),
                          child: CustomText(
                              fontWeight: FontWeight.w700,
                              text: '33 MT',
                              fontSize: 10.sp,
                              color: Colors.white,
                              textAlign: TextAlign.center),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.w, 0.h, 16.w, 0),
              child: Row(
                children: [
                  Container(
                    width: 13.w,
                    height: 13.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.r),
                      color: const Color(0xff7c827d),
                    ),
                    child: SvgPicture.asset(
                      "assets/images/location.svg",
                      width: 9.w,
                      height: 9.h,
                      fit: BoxFit.none,
                    ),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  CustomText(
                    fontWeight: FontWeight.w600,
                    text: "AFTL_Saminaka",
                    fontSize: 12.sp,
                    color: const Color(0xff7c827d),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 8.5.w,
                  ),
                  SvgPicture.asset(
                    "assets/images/icons/forwards.svg",
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 8.5.w,
                  ),
                  Container(
                    width: 13.w,
                    height: 13.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.r),
                      color: const Color(0xff7c827d),
                    ),
                    child: SvgPicture.asset(
                      "assets/images/backloc.svg",
                      width: 9.w,
                      height: 9.h,
                      fit: BoxFit.none,
                    ),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  CustomText(
                    fontWeight: FontWeight.w600,
                    text: "Animal Care",
                    fontSize: 12.sp,
                    color: const Color(0xff7c827d),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            if (controller.showLogistics)
              SizedBox(
                height: 16.h,
              ),
            if (controller.showLogistics)
              Divider(
                color: const Color(0xff1d1b23).withOpacity(0.8),
                height: 0,
              ),
            if (controller.showLogistics)
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15.h, 15.w, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 13.h,
                        ),
                        SvgPicture.asset(
                          "assets/images/icons/route.svg",
                          fit: BoxFit.none,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  fontWeight: FontWeight.w400,
                                  text: "logistics",
                                  fontSize: 12.sp,
                                  color: const Color(0xffb4b4b0),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                CustomText(
                                  fontWeight: FontWeight.w600,
                                  text: "ABC Transport Ltd",
                                  fontSize: 14.sp,
                                  color: const Color(0xff54565b),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 90.w,
                            ),
                            SvgPicture.asset("assets/images/icons/fulfils.svg")
                            // const Spacer(),
                            // Container()
                          ],
                        ),
                        SizedBox(
                          height: 17.h,
                        ),
                        Row(
                          children: [
                            CustomText(
                                fontWeight: FontWeight.w400,
                                text: 'No. of bags',
                                fontSize: 12.sp,
                                color: const Color(0xffb4b4b0),
                                textAlign: TextAlign.center),
                            SizedBox(
                              width: 25.w,
                            ),
                            CustomText(
                                fontWeight: FontWeight.w400,
                                text: 'driver',
                                fontSize: 12.sp,
                                color: const Color(0xffb4b4b0),
                                textAlign: TextAlign.center),
                            SizedBox(
                              width: 70.w,
                            ),
                            CustomText(
                                fontWeight: FontWeight.w400,
                                text: "driver-num",
                                fontSize: 12.sp,
                                color: const Color(0xffb4b4b0),
                                textAlign: TextAlign.center),
                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Row(
                          children: [
                            CustomText(
                                fontWeight: FontWeight.w600,
                                text: '300',
                                fontSize: 12.sp,
                                color: const Color(0xff54565b),
                                textAlign: TextAlign.center),
                            SizedBox(
                              width: 69.w,
                            ),
                            CustomText(
                                fontWeight: FontWeight.w600,
                                text: 'Aminu Amusat',
                                fontSize: 12.sp,
                                color: const Color(0xff54565b),
                                textAlign: TextAlign.center),
                            SizedBox(
                              width: 13.w,
                            ),
                            CustomText(
                                fontWeight: FontWeight.w600,
                                text: "07034524534",
                                fontSize: 12.sp,
                                color: const Color(0xff54565b),
                                textAlign: TextAlign.center),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            SizedBox(
              height: 7.h,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xff656c6c),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8.r),
                      bottomRight: Radius.circular(8.r),
                    )),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 2.h,
                    horizontal: 15.w,
                  ),
                  child: Row(
                    children: [
                      CustomText(
                        fontWeight: FontWeight.w400,
                        text: "TUE 12 JAN, 2021 10:00AM",
                        fontSize: 8.sp,
                        color: Colors.white,
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(),
                      CustomText(
                        fontWeight: FontWeight.w400,
                        text: "ID: OTC-363-22573378487015320",
                        fontSize: 8.sp,
                        color: Colors.white,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
