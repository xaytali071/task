import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:osm_nominatim/osm_nominatim.dart';
import 'package:task/application/location_controller/location_state.dart';
import 'package:task/infostructure/model/addres_model.dart';
import 'package:task/infostructure/model/location_model.dart';

import '../../infostructure/repository.dart';

class LocationNotifire extends StateNotifier<LocationState>{
  LocationNotifire(): super(const LocationState());

  ApiService apiService=ApiService();

  getData() async {
    state=state.copyWith(isLoading: true);
    LocationModel? data=await apiService.fetchLocationData();
    state=state.copyWith(data: data,isLoading: false);
  }

  isSearching(bool value){
    state=state.copyWith(isSearching: value);
  }

  searchLocation(String txt){
    List<Datum> list=[];
    LocationModel? l=state.data;
    for (var s in l!.data!) {
      if(s.translation!.address!.contains(txt)){
      list.add(s);
      }
    }
    state=state.copyWith(listOfSearchResult: list);
  }

  search(String query) async {
    List<AddresModel> list = [];
    if (query.isEmpty) {
      state = state.copyWith(listOfAddres: []);
    } else {
      final searchResult = await Nominatim.searchByName(
        query: query,
        limit: 7,
        addressDetails: true,
        extraTags: true,
        nameDetails: true,
      );
      for (var w in searchResult) {
        list.add(AddresModel(addres: w.address?["country"] ?? "",
            displayName: w.displayName));
      }
      state = state.copyWith(listOfAddres: list);
    }
  }

  selectedLocation(bool value){
    state=state.copyWith(selectLocation: value);
  }

}