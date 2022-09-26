import 'package:easy_localization/easy_localization.dart';
import 'package:exercise/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../mvc/mvc.dart';
import '../../views/dispatch/controller.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/securities_info.dart';
import 'controller.dart';

class HomeView extends StatelessView<HomeScreen, HomeController> {
  // DrawerChecksController? controllers;
  const HomeView(
    HomeController state, {
    Key? key,
    // required this.controllers,
  }) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        onTap: () {
          controller.widget.controller.setOffset(0, 0, false);
        },
        onHorizontalDragUpdate: (DragUpdateDetails details) {
          if (details.delta.dx > 0) {
            controller.widget.controller.setOffset(229.w, 140.h, true);
          } else {
            controller.widget.controller.setOffset(0, 0, false);
          }
        },
        child: Stack(
          children: [
            AnimatedContainer(
                decoration: BoxDecoration(
                  // color: Colors.transparent,
                  borderRadius: controller.widget.controller.isDrawerOpen
                      ? BorderRadius.circular(28.0.r)
                      : BorderRadius.circular(0.0),
                  color: Colors.white,
                ),
                duration: const Duration(milliseconds: 500),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                transform: Matrix4.translationValues(
                    controller.widget.controller.xOffset,
                    controller.widget.controller.yOffset,
                    0)
                  ..scale(
                      controller.widget.controller.isDrawerOpen ? 0.67 : 1.00),
                // ..rotateZ(isDrawerOpen ? -50 : 0),
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.w,
                      right: 16.w,
                      top: 61.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 126.h,
                          child: Stack(
                            children: [
                              Positioned(
                                right: 10.w,
                                top: 10.h,
                                child: SvgPicture.asset(
                                    "assets/images/cardback.svg"),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  top: 16.h,
                                  left: 16.w,
                                ),
                                width: double.infinity,
                                height: 95.h,
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xff54565B).withOpacity(0.93),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.r),
                                    topRight: Radius.circular(20.r),
                                  ),
                                ),
                                child: GestureDetector(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 45.w,
                                        height: 45.h,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 2, color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(8.r)),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          child: Image.asset(
                                            width: 45.w,
                                            height: 45.h,
                                            "assets/images/profi.jpeg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 6.h,
                                          ),
                                          CustomText(
                                            fontWeight: FontWeight.w400,
                                            text: "welcome-back",
                                            fontSize: 13.sp,
                                            color: Colors.white,
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(
                                            height: 4.h,
                                          ),
                                          CustomText(
                                              fontWeight: FontWeight.w700,
                                              text: "Mercy Adanna",
                                              fontSize: 16.sp,
                                              color: Colors.white,
                                              textAlign: TextAlign.center)
                                        ],
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    controller.widget.controller.isDrawerOpen =
                                        true;
                                    controller.widget.controller
                                        .setOffset(229.w, 140.h, true);
                                  },
                                ),
                              ),
                              Positioned(
                                  top: 10.h,
                                  right: 10.w,
                                  child: IconButton(
                                      onPressed: () {
                                        controller.widget.controller
                                            .isDrawerOpen = true;
                                        controller.widget.controller
                                            .setOffset(229.w, 140.h, true);
                                      },
                                      icon: const Icon(
                                        Icons.menu,
                                        color: Colors.white,
                                      ))),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 1.w,
                                  ),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  height: 29.h,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffE1261C)
                                        .withOpacity(0.9),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                      text: 'you-have'.tr(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' 6 '.tr(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'open-deliveries'.tr(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ])),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 56.h,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xffF2F2F2),
                              suffixIcon: Icon(
                                Icons.search,
                                size: 32.w.h,
                                color: const Color(0xffE1261C),
                              ),
                              hintText: "Search truck number, commodity",
                              hintStyle: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff8B908B),
                              ),
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
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Expanded(
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            itemCount: orders.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const DispatchScreen(),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      width: double.infinity,
                                      height: 102.h,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffFCFCFC),
                                        // color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            width: 1,
                                            color: const Color(0xffF2F2F2)),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 8.0.h,
                                                left: 16.w,
                                                right: 16.w),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  // width: 93.w,
                                                  height: 21.h,
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 4.h,
                                                      horizontal: 8.w),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xffF2F2F2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.r),
                                                  ),
                                                  child: CustomText(
                                                    fontWeight: FontWeight.w600,
                                                    text:
                                                        "${orders[index].quantity}MT of ${orders[index].ordername}",
                                                    fontSize: 10.sp,
                                                    color:
                                                        const Color(0xff0089C8),
                                                    textAlign: TextAlign.start,
                                                  ),
                                                ),
                                                CustomText(
                                                  fontWeight: FontWeight.w700,
                                                  text: orders[index]
                                                      .deliveryType,
                                                  fontSize: 8.sp,
                                                  color:
                                                      const Color(0xff0089C8),
                                                  textAlign: TextAlign.center,
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4.h,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.w, right: 16.w),
                                            child: CustomText(
                                                fontWeight: FontWeight.w400,
                                                text: orders[index].unique,
                                                fontSize: 16.sp,
                                                color: const Color(0xff54565B),
                                                textAlign: TextAlign.start),
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.w, right: 16.w),
                                            child: Row(
                                              children: [
                                                SvgPicture.asset(
                                                    "assets/images/backlocation.svg"),
                                                SizedBox(
                                                  width: 2.w,
                                                ),
                                                CustomText(
                                                    fontWeight: FontWeight.w600,
                                                    text: orders[index].seller,
                                                    fontSize: 10.sp,
                                                    color:
                                                        const Color(0xff7C827D),
                                                    textAlign:
                                                        TextAlign.center),
                                                SizedBox(
                                                  width: 7.w,
                                                ),
                                                SvgPicture.asset(
                                                    "assets/images/icons/forwards.svg"),
                                                SizedBox(
                                                  width: 8.5.w,
                                                ),
                                                SvgPicture.asset(
                                                    "assets/images/backloc.svg"),
                                                SizedBox(
                                                  width: 2.w,
                                                ),
                                                CustomText(
                                                    fontWeight: FontWeight.w600,
                                                    text: orders[index].buyer,
                                                    fontSize: 10.sp,
                                                    color:
                                                        const Color(0xff7C827D),
                                                    textAlign:
                                                        TextAlign.center),
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            width: double.infinity,
                                            height: 15.37.h,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16.w),
                                            decoration: BoxDecoration(
                                              color: const Color(0xffE8E8E8),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(8.r),
                                                bottomRight:
                                                    Radius.circular(8.r),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomText(
                                                    fontWeight: FontWeight.w400,
                                                    text: orders[index].time,
                                                    fontSize: 8.sp,
                                                    color:
                                                        const Color(0xff8B908B),
                                                    textAlign:
                                                        TextAlign.center),
                                                CustomText(
                                                    fontWeight: FontWeight.w400,
                                                    text: orders[index].date,
                                                    fontSize: 8.sp,
                                                    color:
                                                        const Color(0xff8B908B),
                                                    textAlign:
                                                        TextAlign.center),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                        right: 16.w,
                                        bottom: 35.h,
                                        child: SvgPicture.asset(
                                            "assets/images/icons/delivery.svg")),
                                  ],
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            if (!controller.widget.controller.isDrawerOpen)
              Positioned(
                right: 18.w,
                bottom: 32.h,
                child: InkWell(
                  onTap: (() {
                    showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(32.r),
                        ),
                      ),
                      isDismissible: false,
                      enableDrag: false,
                      barrierColor: Colors.grey[900]!.withOpacity(0.5),
                      context: context,
                      builder: (context) {
                        return SecurityInfo();
                      },
                    );
                  }),
                  child: Material(
                    borderRadius: BorderRadius.circular(48.r),
                    elevation: 7,
                    shadowColor: Colors.grey[500],
                    child: Container(
                      width: 48.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                        color: const Color(0xffe1261c),
                        borderRadius: BorderRadius.circular(48.r),
                      ),
                      child: SvgPicture.asset(
                        "assets/images/icons/info-circle.svg",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
    // );
  }
}
