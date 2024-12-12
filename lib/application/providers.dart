import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/application/location_controller/location_notifire.dart';
import 'package:task/application/location_controller/location_state.dart';

final locationProvider=StateNotifierProvider<LocationNotifire,LocationState>((ref) => LocationNotifire());
