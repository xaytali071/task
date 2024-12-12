import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../infostructure/model/location_model.dart';
import '../../components/location_daata.dart';
import '../../components/style.dart';

class LocationDataBottomSheet extends StatelessWidget {
  final List<Datum> data;
  const LocationDataBottomSheet({super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      snap: true,
      initialChildSize: 0.4,
      minChildSize: 0.4,
      maxChildSize: 0.8,
      builder: (BuildContext context, ScrollController scrollController) {
        return DecoratedBox(
          decoration: BoxDecoration(
              color: Style.whiteColor,
              borderRadius: BorderRadius.only(topRight: Radius.circular(16.r),topLeft: Radius.circular(16.r))
          ),
          child:  ListView(
              controller: scrollController,
              children:[
                10.verticalSpace,
                Padding(
                  padding:  REdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    children: [
                      Text("${data.length} salons near you",style: Style.normalText(size: 18,weight: FontWeight.w600),),
                      const Spacer(),
                      Container(
                        width: 46.r,
                        height: 46.r,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: Style.greyColor),
                        ),
                        child: const Center(child: Icon(Icons.filter_alt_outlined)),
                      )
                    ],
                  ),
                ),

                ListView.builder(
                    shrinkWrap: true,
                   physics: const NeverScrollableScrollPhysics(),
                    controller: scrollController,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return LocationData(data:data[index]);
                    }),
              ]
          ),
        );
      },
    );
  }
}
