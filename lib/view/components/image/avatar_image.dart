import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style.dart';

class AvatarImage extends StatelessWidget {
  final double size;
  final String image;

  const AvatarImage({super.key, this.size = 100, required this.image});

  @override
  Widget build(BuildContext context) {
    return image.isEmpty  ?
    Container(
        width: size.w,
        height: size.h,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Style.blackColor,

        ),
        child: Center(
          child: Icon(Icons.person,size: size-10.r,color: Style.greyColor,),
        )
    ) : image.contains("http") ? Container(
      width: size.w,
      height: size.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Style.blackColor,
        image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover
        ),
      ),
    ) : Container(
      width: size.w,
      height: size.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Style.blackColor,
        image: DecorationImage(
            image: FileImage(File(image)),
            fit: BoxFit.cover
        ),
      ),
    );
  }
}
