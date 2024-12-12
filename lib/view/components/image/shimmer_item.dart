import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../style.dart';


class ShimmerItem extends StatelessWidget {
  final double height;
  final double width;
  final double radius;

  const ShimmerItem({super.key, required this.height, required this.width, required this.radius});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: SizedBox(
        width: width.w,
        height: height.h,
        child: Shimmer.fromColors(
          baseColor: Style.whiteColor,
          highlightColor: Style.greyColor,
          child:
          Container(width: width.w, height: height.h, color: Style.greyColor),
        ),
      ),
    );
  }
}