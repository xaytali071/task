import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/application/providers.dart';
import 'package:task/view/components/button/custom_button.dart';
import 'package:task/view/components/button/mini_button.dart';
import 'package:task/view/components/form_field/custom_text_form_field.dart';
import 'package:task/view/components/style.dart';
import 'package:task/view/pages/widgets/custom_horizohtal_list.dart';
import '../../../application/location_controller/location_state.dart';

class SearchBottomSheet extends ConsumerStatefulWidget {
  const SearchBottomSheet({super.key});

  @override
  ConsumerState<SearchBottomSheet> createState() => _SearchBottomSheetState();
}

class _SearchBottomSheetState extends ConsumerState<SearchBottomSheet> {

  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final event = ref.read(locationProvider.notifier);
    LocationState watch = ref.watch(locationProvider);

    return WillPopScope(
      onWillPop:wilPop ,
      child: DraggableScrollableSheet(
          expand: false,
          snap: true,
          initialChildSize:  watch.selectLocation ? 0.4 : 0.8,
          minChildSize: 0.4,
          maxChildSize: 0.8,
          builder: (BuildContext context, ScrollController scrollController){
        return DecoratedBox(
          decoration: const BoxDecoration(
            color: Style.whiteColor
          ),
          child: watch.selectLocation ? ListView(
            children: [
              20.verticalSpace,
              CustomHorizohtalList(data: watch.data?.data ?? []),
             20.verticalSpace,
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    CustomTextFormField(hint: "London",readOnly: true,perfix: const Icon(Icons.location_on_outlined),sufix: GestureDetector(
                        onTap: (){
                          event.selectedLocation(false);
                        },
                        child: const Icon(Icons.cancel,color: Style.greyColor,)),borderColor: Style.greyColor,),
                 20.verticalSpace,
                    Row(
                      children: [
                        MiniButton(child: const Icon(Icons.arrow_back_ios,color: Style.whiteColor,), onTap: (){
                          event.selectedLocation(false);

                        }),
                        10.horizontalSpace,
                        CustomButton(text: 'Applay', onTap: (){},width: 270,color: Style.orangeColor,)
                      ],
                    )

                  ],
                ),
              ),

            ],
          ) : ListView(
            children: [
              20.verticalSpace,
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: CustomTextFormField(controller: controller,onChanged:(s){
                 event.search(s);
                },hint: "Search",sufix: GestureDetector(
                    onTap: (){
                      controller.clear();
                    },
                    child: const Icon(Icons.cancel,color: Style.greyColor,)),perfix: const Icon(Icons.location_on_outlined,),),
              ),
                  20.verticalSpace,
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: ListView.builder(
                  shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: watch.listOfAddres.length,
                    itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){
                      event.selectedLocation(true);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.location_on_outlined,size: 30,),
                            10.horizontalSpace,
                            Column(
                              children: [
                                SizedBox(
                                    width: 270.w,
                                    child: Text(watch.listOfAddres[index].displayName ?? "",style: Style.normalText(size: 14,),overflow: TextOverflow.ellipsis,maxLines: 1,)),
                                SizedBox(
                                    width: 270.w,
                                    child: Text(watch.listOfAddres[index].addres ?? "",style: Style.normalText(size: 14,color: Style.greyColor,weight: FontWeight.w400),overflow: TextOverflow.ellipsis,maxLines: 1,)),
                              ],
                            ),
                          ],
                        ),
                        const Divider(),
                      ],
                    ),
                  );
                }),
              ),
              CustomHorizohtalList(data:watch.listOfSearchResult),
            ],
          ),
        );
      }),
    );
  }
  Future<bool> wilPop() {
    ref.read(locationProvider.notifier).selectedLocation(false);
    ref.read(locationProvider.notifier).isSearching(false);
    return Future.value(false);
  }
}
