import 'package:exercise/screen/controller/drawer.dart';
import 'package:exercise/screen/controller/home.dart';
import 'package:exercise/screen/view/history_page.dart';
import 'package:exercise/screen/view/stateless_view.dart';
import 'package:exercise/screen/widget/custom_text.dart';
import 'package:exercise/screen/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerView extends StatelessView<DrawerChecks, DrawerChecksController> {
  const DrawerView(
    DrawerChecksController state, {
    Key? key,
  }) : super(
          state,
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      DrawerScreen(),
      Visibility(
        visible: true,
        child: HomeScreen(
          controller: controller,
        ),
      ),
      if (controller.isDrawerOpen)
        AnimatedContainer(
          duration: const Duration(seconds: 4),
          width: double.infinity,
          height: double.infinity,
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.fromLTRB(22.0.w, 47.0.h, 0.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 29.w,
                      height: 29.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(29.r),
                          border: Border.all(
                            width: 1,
                            color: Colors.white,
                          )),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18.r),
                        child: Image.asset("assets/images/drawerprofile.jpeg"),
                      ),
                    ),
                    SizedBox(
                      width: 13.63.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomText(
                              weight: FontWeight.w400,
                              text: "hey",
                              size: 14.42.sp,
                              color: Colors.white,
                              align: TextAlign.start,
                            ),
                            CustomText(
                              weight: FontWeight.w700,
                              text: "Adamu",
                              size: 14.42.sp,
                              color: Colors.white,
                              align: TextAlign.start,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: 'You have',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 9.61.sp,
                            ),
                          ),
                          TextSpan(
                            text: ' 6',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 9.61.sp,
                            ),
                          ),
                          TextSpan(
                            text: ' trucks delivered today',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 9.61.sp,
                            ),
                          ),
                        ])),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        controller.setOffset(0, 0, false);
                      },
                      child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(right: 22.w),
                          width: 32.w,
                          height: 32.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: const Color(0xffF2F2F2).withOpacity(0.4),
                          ),
                          child: Image.asset("assets/images/cancel.png")
                          // ,
                          ),
                    )
                  ],
                ),
                SizedBox(
                  height: 44.h,
                ),
                Container(
                  width: 100.w,
                  height: 40.h,
                  // color: Colors.white,
                  padding: const EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HistoryPage(controller)));
                    },
                    child: Row(
                      children: [
                        Image.asset("assets/images/book-saved.png"),
                        SizedBox(width: 10.w),
                        CustomText(
                          weight: FontWeight.w500,
                          text: "history",
                          size: 14.sp,
                          color: const Color(0xffF2F2F2).withOpacity(0.8),
                          align: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 520.h,
                ),
                Row(
                  children: [
                    Image.asset("assets/images/logout.png"),
                    SizedBox(
                      width: 10.w,
                    ),
                    CustomText(
                      weight: FontWeight.w500,
                      text: "logOut",
                      size: 14.sp,
                      color: const Color(0xffF2F2F2).withOpacity(0.8),
                      align: TextAlign.center,
                    )
                  ],
                )
              ],
            ),
          ),
        ) 
    ]);
  }
}
