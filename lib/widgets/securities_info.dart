import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'commodity_tile.dart';
import 'custom_text.dart';

class SecurityInfo extends StatelessWidget {
  SecurityInfo({Key? key}) : super(key: key);
  List<String> commodities = ["maz", "ssc", "sg", "sb"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 272.h,
      // color: Colors.transparent,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: (() => Navigator.pop(context)),
                child: Container(
                  padding: const EdgeInsets.all(13),
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  width: 41.h,
                  height: 41.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(41.r),
                  ),
                  child: SvgPicture.asset(
                    "assets/images/icons/cancels.svg",
                    fit: BoxFit.none,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            padding: EdgeInsets.all(16.w.h),
            width: double.infinity,
            height: 215.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 35.h,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      width: 1.w,
                      color: const Color(0xff54565B).withOpacity(0.1),
                    ),
                  )),
                  child: CustomText(
                    fontWeight: FontWeight.w500,
                    text: "commodity-codes",
                    fontSize: 14.sp,
                    color: const Color(0xff54565B),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                      height: 4.h,
                    ),
                    itemCount: commodities.length,
                    itemBuilder: ((context, index) {
                      return CommodityTile(commodityName: commodities[index]);
                    }),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
