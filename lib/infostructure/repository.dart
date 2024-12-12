import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'model/location_model.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "https://api.demand24.org",
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  Future<LocationModel?> fetchLocationData() async {
    try {
      Response response = await _dio.get('/api/v1/rest/shops/paginate?lang=en&location_type=2&column=distance&sort=asc&address%5Blatitude%5D=41.31116142987567&address%5Blongitude%5D=69.27967749537682');

      if (response.statusCode == 200) {
        return LocationModel.fromJson(response.data);
      } else {
        if (kDebugMode) {
          print("Error: ${response.statusCode} - ${response.statusMessage}");
        }
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print("Exception: $e");
      }
      return null;
    }
  }
}
