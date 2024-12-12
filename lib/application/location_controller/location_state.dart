import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:task/infostructure/model/location_model.dart';

import '../../infostructure/model/addres_model.dart';
part 'location_state.freezed.dart';

@freezed
class LocationState with _$LocationState{
  const factory LocationState ({
    @Default(false) bool isLoading,
     LocationModel? data,
     List<LatLng>? listOflocation,
    @Default(false) isSearching,
    @Default([]) List<Datum> listOfSearchResult,
    @Default([]) List<AddresModel> listOfAddres,
    @Default(false) bool selectLocation,

  })=_LocationState;

}