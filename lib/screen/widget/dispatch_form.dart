import 'package:exercise/screen/controller/dispatch.dart';
import 'package:exercise/screen/widget/custom_text.dart';
import 'package:exercise/screen/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFields extends StatelessWidget {
  final DispatchController controller;
  const CustomTextFields({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.only(right: 25.w, left: 25.w, top: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomText(
                    weight: FontWeight.w600,
                    text: "*",
                    size: 14.sp,
                    color: const Color(0xffE1261C),
                    align: TextAlign.center,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  CustomText(
                    weight: FontWeight.w400,
                    text: "Log delivery details",
                    size: 14.sp,
                    color: const Color(0xff47494E),
                    align: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              SizedBox(
                // color: Colors.red,
                height: 355.h,
                child: ListView(
                  padding: EdgeInsets.zero,
                  physics: const ClampingScrollPhysics(),
                  children: [
                    CustomTextField(controller,
                        labelText: "Logistics Company Name"),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomTextField(controller, labelText: "Driver's Name"),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomTextField(controller,
                        labelText: "Driver's Phone Number"),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomTextField(controller, labelText: "Truck Number"),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomTextField(controller, labelText: "Container Number"),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomTextField(controller, labelText: "Volume(MT)"),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomTextField(controller, labelText: "Bags"),
                  ],
                ),
              ),
            ],
          ),
        ),

        // const Spacer(),
        SizedBox(
          height: 2.5.h,
        ),
      ],
    );
  }
}
