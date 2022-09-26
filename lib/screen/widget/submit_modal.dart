import 'package:easy_localization/easy_localization.dart';
import 'package:exercise/screen/widget/custom_text.dart';
import 'package:exercise/screen/widget/success_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/dispatch.dart';

class SubmitModal extends StatelessWidget {
  final DispatchController controller;
  const SubmitModal({Key? key, required this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15.h, left: 27.w, right: 27.w),
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
            height: 26.h,
          ),
          Image.asset('assets/images/icons/submits.png'),
          SizedBox(
            height: 14.h,
          ),
          CustomText(
            weight: FontWeight.w700,
            text: "submit?",
            size: 20.sp,
            color: const Color(0xff54565B),
            align: TextAlign.center,
          ),
          SizedBox(
            height: 9.h,
          ),
          const CustomText(
            weight: FontWeight.w400,
            text: "accept-delivery.",
            size: 14,
            color: Color(0xff7C827D),
            align: TextAlign.center,
          ),
          SizedBox(
            height: 31.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 56.h,
                width: 154.w,
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color(0xffE1261C),
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xffE1261C)),
                          borderRadius: BorderRadius.circular(56.r))),
                  child: Text(
                    "Cancel",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
                  ).tr(),
                ),
              ),
              SizedBox(
                height: 56.h,
                width: 154.w,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    showModalBottomSheet(
                      // backgroundColor: Colors.transparent,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(24.r),
                        ),
                      ),
                      isDismissible: false,
                      enableDrag: false,
                      barrierColor: Colors.grey[900]!.withOpacity(0.5),
                      context: context,
                      builder: (context) {
                        return SuccessModal(controller: controller);
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffE1261C),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(56.r))),
                  child: Text("proceed",
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w700))
                      .tr(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
