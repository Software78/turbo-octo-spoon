import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text.dart';

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
              fontWeight: FontWeight.w700,
              text: commodityName,
              fontSize: 12.sp,
              color: const Color(0xff8B908B),
              textAlign: TextAlign.start,
            )
          ],
        ),
      ),
    );
  }
}
