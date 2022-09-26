import 'package:exercise/screen/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommodityTile extends StatelessWidget {
  final String commodityName;
  const CommodityTile({Key? key, required this.commodityName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24.h,
      child: Center(
        child: Row(
          children: [
            Container(
              width: 6.w,
              height: 6.h,
              color: const Color(0xffC81107),
            ),
            SizedBox(
              width: 13.11.w,
            ),
            CustomText(
              weight: FontWeight.w700,
              text: commodityName,
              size: 12.sp,
              color: const Color(0xff8B908B),
              align: TextAlign.start,
            )
          ],
        ),
      ),
    );
  }
}
