import 'package:dotted_border/dotted_border.dart';
import 'package:exercise/screen/controller/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../mvc/mvc.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/history_tile.dart';

class HistoryPage extends StatelessView<DrawerChecks, DrawerChecksController> {
  const HistoryPage(DrawerChecksController state, {Key? key})
      : super(state, key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                  top: 5.h,
                  right: 10.w,
                  child: SvgPicture.asset(
                    "assets/images/cardback.svg",
                    width: double.infinity,
                    height: 90.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  // color: Colors.grey,
                  padding: EdgeInsets.only(
                    left: 15.w,
                    // top: 29,
                  ),
                  width: double.infinity,
                  height: 101.h,
                  decoration: BoxDecoration(
                    color: const Color(0xff47494E).withOpacity(0.9),
                  ),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          controller.setOffset(0, 0, false);
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 48.w,
                          height: 48.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.25.r),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 21.w.h,
                              color: const Color(0xff54565B),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      CustomText(
                        text: 'delivery-history',
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        color: Colors.white,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ],
            ),
            DottedBorder(
                strokeWidth: 2.w,
                dashPattern: const [4, 4],
                color: const Color(0xff54565B),
                child: Container(
                  height: 0,
                  color: const Color(0xff54565B),
                )),
            SizedBox(
              height: 24.h,
            ),
            Center(
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'You have',
                  style: TextStyle(
                    color: const Color(0xff54565b),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
                TextSpan(
                  text: ' 6',
                  style: TextStyle(
                    color: const Color(0xffe1261c),
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp,
                  ),
                ),
                TextSpan(
                  text: ' trucks delivered today',
                  style: TextStyle(
                    color: const Color(0xff54565b),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
              ])),
            ),
            SizedBox(
              height: 24.h,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: ((context, index) => const HistoryTile()),
                  separatorBuilder: ((context, index) => SizedBox(
                        height: 18.h,
                      )),
                  itemCount: 6),
            )
          ],
        ),
      ),
    );
  }
}
