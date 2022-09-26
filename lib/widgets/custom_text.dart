import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight ,
    this.color,
    this.fontStyle,
    this.textDecoration,
    this.textAlign,
  });

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final FontStyle? fontStyle;
  final TextDecoration? textDecoration;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.mulish(
        textStyle: TextStyle(
            fontSize: fontSize,
            fontWeight:  fontWeight ,
            color: color,
            fontStyle: fontStyle,
            decoration: textDecoration),
      ),
    ).tr();
  }
}
