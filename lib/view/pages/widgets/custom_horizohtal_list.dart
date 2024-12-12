import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/infostructure/model/location_model.dart';
import 'package:task/view/components/image/custom_network_image.dart';
import 'package:task/view/components/style.dart';

class CustomHorizohtalList extends StatelessWidget {
  final List<Datum> data;
  const CustomHorizohtalList({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context,index){
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: 300.w,
          height: 80.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: Style.greyColor)
          ),
          child: Padding(
            padding:  EdgeInsets.all(4.r),
            child: Row(children: [
              CustomImageNetwork(image: data[index].backgroundImg,width: 100,height: 70,),
             8.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  5.verticalSpace,
                  SizedBox(
                      width: 180.w,
                      child: Text(data[index].translation?.title ?? "",style: Style.normalText(size: 14,),overflow: TextOverflow.ellipsis,maxLines: 1,)),
                  SizedBox(
                      width: 180.w,
                      child: Text(data[index].translation?.address ?? "",style: Style.normalText(size: 12,color: Style.greyColor,weight: FontWeight.w400),overflow: TextOverflow.ellipsis,maxLines: 1,)),
                5.verticalSpace,
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined,size: 20,),
                    Text("${data[index].distance} km",style: Style.normalText(weight: FontWeight.w400),),
                    20.horizontalSpace,
                    const Icon(Icons.star,color: Style.orangeColor,),
                    Text("4.8",style: Style.normalText(weight: FontWeight.w400),)
                  ],
                )
                ],
              ),
            ],),
          ) ,
        );
      }),
    );
  }
}
