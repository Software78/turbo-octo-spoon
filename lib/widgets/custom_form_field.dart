import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_text.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    Key? key,
    required this.label,
    this.controller,
  }) : super(key: key);

  final String label;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorColor: const Color(0xff7C827D),
      validator: (value) {
        if (value!.isEmpty) return 'Input correct details';
        return null;
      },
      decoration: InputDecoration(
        label: CustomText(text: label),
        labelStyle: GoogleFonts.mulish(
          textStyle: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xff7C827D),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: Color(0xff7C827D),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: Color(0xff7C827D),
          ),
        ),
      ),
    );
  }
}

class SearchFormField extends StatelessWidget {
  const SearchFormField({
    Key? key,
    required this.label,
    this.controller,
    this.suffixIcon,
  }) : super(key: key);

  final String label;
  final TextEditingController? controller;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: const Color(0xff7C827D),
      decoration: InputDecoration(
        fillColor: const Color(0xffF2F2F2),
        filled: true,
        suffixIcon: suffixIcon,
        hintText: label,
        hintStyle: GoogleFonts.mulish(
          textStyle: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xff7C827D),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: Color(0xff7C827D),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: Color(0xff7C827D),
          ),
        ),
      ),
    );
  }
}
