import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Style {
  Style._();

  static const whiteColor = Color(0xffFFFFFF);
  static const blackColor = Color(0xff000000);
  static const orangeColor = Color(0xFFF19204);
  static const blackColor17 = Color(0x17000000);
  static const whiteColor50 = Color(0x60FFFFFF);
  static const redColor = Color(0xffF20826);
  static const transperntColor = Color(0x00000000);
  static const greyColor = Color(0xFFBDBDBD);

  static const gradient = LinearGradient(
    begin: Alignment(0.00, -1.00),
    end: Alignment(0, 1),
    colors: [Colors.black, Colors.white],
  );

  static TextStyle boldText(
      {Color color = Style.blackColor,
      double size = 24,
      FontWeight weight = FontWeight.w700}) {
    return GoogleFonts.roboto(
        color: color, fontSize: size.sp, fontWeight: weight);
  }

  static TextStyle miniText(
      {Color color = Style.greyColor,
      double size = 12,
      FontWeight weight = FontWeight.w400}) {
    return GoogleFonts.inter(
        color: color, fontSize: size.sp, fontWeight: weight);
  }



  static TextStyle normalText(
      {Color color = Style.blackColor,
      double size = 14,
      FontWeight weight = FontWeight.w500}) {
    return GoogleFonts.inter(
        color: color, fontSize: size.sp, fontWeight: weight);
  }
}
