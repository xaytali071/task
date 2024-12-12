import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/infostructure/model/location_model.dart';
import 'package:task/view/components/blur_wrap.dart';
import 'package:task/view/components/image/avatar_image.dart';
import 'package:task/view/components/image/custom_network_image.dart';
import 'package:task/view/components/style.dart';

class LocationData extends StatelessWidget {
  final Datum data;
  const LocationData({super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 370.h,
      decoration: const BoxDecoration(
        color: Style.whiteColor,

      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         
            10.verticalSpace,
            Stack(
              children: [
                CustomImageNetwork(image: data.backgroundImg,height: 195,radius: 12,),
                Positioned(
                  right: 10.r,
                  top: 10.r,
                  child: BlurWrap(
                    radius: BorderRadius.circular(12.r),
                    child: Container(
                      width: 36.r,
                      height: 36.r,
                      decoration: BoxDecoration(
                        color: Style.whiteColor.withOpacity(0.2),
                        border: Border.all(color: Style.whiteColor.withOpacity(0.6)),
                        borderRadius: BorderRadius.circular(12.r)
                      ),
                      child: Center(child: Text("4.8",style: Style.normalText(weight: FontWeight.w800,size: 12,),)),
                    ),
                  ),
                )
              ],
            ),
            10.verticalSpace,
            Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                        width: 280.w,
                        child: Text(data.translation?.title ?? "",style: Style.normalText(size: 18,),overflow: TextOverflow.ellipsis,maxLines: 1,)),
                    SizedBox(
                        width: 280.w,
                        child: Text(data.translation?.address ?? "",style: Style.normalText(size: 14,color: Style.greyColor,weight: FontWeight.w400),overflow: TextOverflow.ellipsis,maxLines: 1,)),
                  ],
                ),
             AvatarImage(image: data.logoImg ?? "",size: 40,)
              ],
            ),
            5.verticalSpace,
            Row(
              children: [
                const Icon(Icons.location_on_rounded,),
                5.horizontalSpace,
                Text("${data.distance}.m from you",style: Style.miniText(),)
              ],
            ),
            8.verticalSpace,
            Row(
              children: [
                DecoratedBox(decoration: BoxDecoration(
                  border: Border.all(color:Style.greyColor),
                  borderRadius: BorderRadius.circular(8.r)
                ),
                child: Padding(
                  padding:  EdgeInsets.all(4.r),
                  child: Text("Hair Salon",style: Style.miniText(),),
                ),
                ),
                10.horizontalSpace,
                DecoratedBox(decoration: BoxDecoration(
                    border: Border.all(color:Style.greyColor),
                    borderRadius: BorderRadius.circular(8.r)
                ),
                  child: Padding(
                    padding:  EdgeInsets.all(4.r),
                    child: Text("Makeup Artist",style: Style.miniText(),),
                  ),
                ),
                10.horizontalSpace,
                DecoratedBox(decoration: BoxDecoration(
                    border: Border.all(color:Style.greyColor),
                    borderRadius: BorderRadius.circular(8.r)
                ),
                  child: Padding(
                    padding:  EdgeInsets.all(4.r),
                    child: Text("Nails",style: Style.miniText(),),
                  ),
                )
              ],
            ),
            8.verticalSpace,
            Row(
              children: [
              Text("Excellent",style: Style.normalText(),),
                10.horizontalSpace,
                Text("2.588 reviews",style: Style.normalText(weight: FontWeight.w400),)
              ],
            ),

            const Divider(),
          ],
        ),
      ),
    );
  }
}
