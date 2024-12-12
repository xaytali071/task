import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style.dart';


class CustomTextFormField extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  final Widget? sufix;
  final Widget? perfix;
  final Color borderColor;
  final bool obscure;
  final int maxLines;
  final Color filledColor;
  final double height;
  final Color textColor;
  final bool readOnly;
  final TextInputType keyBoardType;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final TextCapitalization capitalization;
  final String? Function(String?)? validator;

  const CustomTextFormField(
      {super.key,
      required this.hint,
      this.controller,
      this.sufix,
        this.maxLines=1,
      this.perfix,
      this.onChanged,
        this.height=48,
        this.filledColor=Style.whiteColor50,
      this.keyBoardType = TextInputType.text,
        this.obscure=false,
        this.readOnly=false,
        this.textColor=Style.blackColor,
        this.validator,
        this.onTap,
        this.capitalization=TextCapitalization.words,
        this.borderColor=Style.blackColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      obscureText:obscure ,
      maxLines:maxLines ,
      textCapitalization: capitalization,
      onTap: onTap,
      readOnly:readOnly ,
      validator: validator,
      keyboardType: keyBoardType,
      style: Style.normalText(color: textColor),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Style.normalText(color: Style.greyColor),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: borderColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: borderColor,),),

        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(color: Style.redColor,),),
        fillColor: filledColor.withOpacity(0.5),
        filled: true,
        constraints: BoxConstraints.tightFor(height: height.h),
        contentPadding: EdgeInsets.symmetric(horizontal: 10.w),

        suffixIcon: sufix,
        prefixIcon: perfix,
      ),
    );
  }
}
