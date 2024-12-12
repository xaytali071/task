import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/view/components/style.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 56.h,
      decoration: BoxDecoration(
        color: Style.whiteColor,
        borderRadius: BorderRadius.circular(12.r)
      ),
      child: Padding(
        padding:  EdgeInsets.all(8.r),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            5.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hair coloring",style: Style.normalText(),),
            Text("Los Angeles, CA, USA",style: Style.normalText(color: Style.greyColor,size: 12),)
          ],
        ),
            const Spacer(),
            Container(
              width: 46.r,
              height: 46.r,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: Style.greyColor),
              ),
              child: const Center(child: Icon(Icons.map_outlined)),
            )
          ],
        ),
      ),
    );
  }
}
