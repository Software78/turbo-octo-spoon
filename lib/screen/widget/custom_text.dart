import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight? weight;
  final double? size;
  final Color? color;
  final TextAlign? align;
  // this.
  const CustomText({
    Key? key,
    this.weight,
    required this.text,
    this.size,
    this.color,
    this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.mulish(
        fontWeight: weight,
        fontSize: size ?? 12.sp,
        color: color,
      ),
      textAlign: align,
      softWrap: false,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    ).tr();
  }
}
