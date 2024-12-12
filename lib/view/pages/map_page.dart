import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:task/application/location_controller/location_state.dart';
import 'package:task/application/providers.dart';
import 'package:task/view/components/custom_loading_widget.dart';
import 'package:task/view/components/form_field/keyboard_dissimer.dart';
import 'package:task/view/components/top_widget.dart';
import 'package:task/view/pages/widgets/location_data_bottom_sheet.dart';
import 'package:task/view/pages/widgets/search_bottom_sheet.dart';

class MapPage extends ConsumerStatefulWidget {
  const MapPage({super.key});

  @override
  ConsumerState<MapPage> createState() => _MapPageState();
}

class _MapPageState extends ConsumerState<MapPage> {
  CameraPosition cameraPosition = const CameraPosition(
    target: LatLng(41.317194, 69.234539),
    zoom: 11.5,
  );
  late GoogleMapController mapController;

  BitmapDescriptor? icon;
  getIcons() async {
    var icon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 3.2,size: Size(15,5)),
        "assets/location_icon.png");
    setState(() {
      this.icon = icon;
    });
  }

  @override
  void initState() {
    getIcons();
    WidgetsBinding.instance.addPostFrameCallback((s) {
      ref.read(locationProvider.notifier).getData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final event = ref.read(locationProvider.notifier);
    LocationState watch = ref.watch(locationProvider);
    return KeyboardDissimer(
      child: Scaffold(
          body: Stack(
            children: [
              GoogleMap(
                zoomControlsEnabled: false,
                initialCameraPosition: cameraPosition,
                onMapCreated: (GoogleMapController controller) {
                  mapController = controller;
                },
                markers: watch.data != null
                    ? watch.data!.data!
                        .map((e) => Marker(
                  infoWindow: InfoWindow(title: e.distance.toString()),
                  icon: icon ?? BitmapDescriptor.defaultMarker,
                            markerId: MarkerId(e.id.toString()),
                            position: LatLng(e.latLong!.latitude ?? 0,
                                e.latLong!.longitude ?? 0)))
                        .toSet()
                    : <Marker>{},
              ),
             watch.isSearching ? const SizedBox.shrink() : Positioned(
                  top: 70.h,
                  child: Padding(
                    padding: REdgeInsets.symmetric(horizontal: 20.w),
                    child: GestureDetector(
                        onTap: (){
                          event.isSearching(true);
                        },
                        child: const TopWidget()),
                  )),
              watch.isLoading ? const Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: CustomLoadingWidget()) : const SizedBox.shrink(),
            ],
          ),
          bottomNavigationBar:watch.isLoading ? const SizedBox.shrink() : watch.isSearching ? const SearchBottomSheet() : LocationDataBottomSheet(data: watch.data?.data ?? [],),
      )
    );
  }
}
