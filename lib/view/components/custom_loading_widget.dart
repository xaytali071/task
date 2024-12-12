import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/view/components/blur_wrap.dart';
import 'package:task/view/components/style.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlurWrap(
      radius: BorderRadius.circular(12.r),
      child: Container(
        width: 50.r,
        height: 50.r,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: Style.whiteColor.withOpacity(0.4)
        ),
        child: const Center(
          child: CircularProgressIndicator(color: Style.blackColor,),
        ),
      ),
    );
  }
}
