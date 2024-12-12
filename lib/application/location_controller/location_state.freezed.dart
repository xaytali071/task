// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationState {
  bool get isLoading => throw _privateConstructorUsedError;
  LocationModel? get data => throw _privateConstructorUsedError;
  List<LatLng>? get listOflocation => throw _privateConstructorUsedError;
  dynamic get isSearching => throw _privateConstructorUsedError;
  List<Datum> get listOfSearchResult => throw _privateConstructorUsedError;
  List<AddresModel> get listOfAddres => throw _privateConstructorUsedError;
  bool get selectLocation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
  @useResult
  $Res call(
      {bool isLoading,
      LocationModel? data,
      List<LatLng>? listOflocation,
      dynamic isSearching,
      List<Datum> listOfSearchResult,
      List<AddresModel> listOfAddres,
      bool selectLocation});
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = freezed,
    Object? listOflocation = freezed,
    Object? isSearching = freezed,
    Object? listOfSearchResult = null,
    Object? listOfAddres = null,
    Object? selectLocation = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      listOflocation: freezed == listOflocation
          ? _value.listOflocation
          : listOflocation // ignore: cast_nullable_to_non_nullable
              as List<LatLng>?,
      isSearching: freezed == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as dynamic,
      listOfSearchResult: null == listOfSearchResult
          ? _value.listOfSearchResult
          : listOfSearchResult // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
      listOfAddres: null == listOfAddres
          ? _value.listOfAddres
          : listOfAddres // ignore: cast_nullable_to_non_nullable
              as List<AddresModel>,
      selectLocation: null == selectLocation
          ? _value.selectLocation
          : selectLocation // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationStateImplCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$$LocationStateImplCopyWith(
          _$LocationStateImpl value, $Res Function(_$LocationStateImpl) then) =
      __$$LocationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      LocationModel? data,
      List<LatLng>? listOflocation,
      dynamic isSearching,
      List<Datum> listOfSearchResult,
      List<AddresModel> listOfAddres,
      bool selectLocation});
}

/// @nodoc
class __$$LocationStateImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateImpl>
    implements _$$LocationStateImplCopyWith<$Res> {
  __$$LocationStateImplCopyWithImpl(
      _$LocationStateImpl _value, $Res Function(_$LocationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = freezed,
    Object? listOflocation = freezed,
    Object? isSearching = freezed,
    Object? listOfSearchResult = null,
    Object? listOfAddres = null,
    Object? selectLocation = null,
  }) {
    return _then(_$LocationStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      listOflocation: freezed == listOflocation
          ? _value._listOflocation
          : listOflocation // ignore: cast_nullable_to_non_nullable
              as List<LatLng>?,
      isSearching: freezed == isSearching ? _value.isSearching! : isSearching,
      listOfSearchResult: null == listOfSearchResult
          ? _value._listOfSearchResult
          : listOfSearchResult // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
      listOfAddres: null == listOfAddres
          ? _value._listOfAddres
          : listOfAddres // ignore: cast_nullable_to_non_nullable
              as List<AddresModel>,
      selectLocation: null == selectLocation
          ? _value.selectLocation
          : selectLocation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LocationStateImpl implements _LocationState {
  const _$LocationStateImpl(
      {this.isLoading = false,
      this.data,
      final List<LatLng>? listOflocation,
      this.isSearching = false,
      final List<Datum> listOfSearchResult = const [],
      final List<AddresModel> listOfAddres = const [],
      this.selectLocation = false})
      : _listOflocation = listOflocation,
        _listOfSearchResult = listOfSearchResult,
        _listOfAddres = listOfAddres;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final LocationModel? data;
  final List<LatLng>? _listOflocation;
  @override
  List<LatLng>? get listOflocation {
    final value = _listOflocation;
    if (value == null) return null;
    if (_listOflocation is EqualUnmodifiableListView) return _listOflocation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final dynamic isSearching;
  final List<Datum> _listOfSearchResult;
  @override
  @JsonKey()
  List<Datum> get listOfSearchResult {
    if (_listOfSearchResult is EqualUnmodifiableListView)
      return _listOfSearchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfSearchResult);
  }

  final List<AddresModel> _listOfAddres;
  @override
  @JsonKey()
  List<AddresModel> get listOfAddres {
    if (_listOfAddres is EqualUnmodifiableListView) return _listOfAddres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfAddres);
  }

  @override
  @JsonKey()
  final bool selectLocation;

  @override
  String toString() {
    return 'LocationState(isLoading: $isLoading, data: $data, listOflocation: $listOflocation, isSearching: $isSearching, listOfSearchResult: $listOfSearchResult, listOfAddres: $listOfAddres, selectLocation: $selectLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality()
                .equals(other._listOflocation, _listOflocation) &&
            const DeepCollectionEquality()
                .equals(other.isSearching, isSearching) &&
            const DeepCollectionEquality()
                .equals(other._listOfSearchResult, _listOfSearchResult) &&
            const DeepCollectionEquality()
                .equals(other._listOfAddres, _listOfAddres) &&
            (identical(other.selectLocation, selectLocation) ||
                other.selectLocation == selectLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      data,
      const DeepCollectionEquality().hash(_listOflocation),
      const DeepCollectionEquality().hash(isSearching),
      const DeepCollectionEquality().hash(_listOfSearchResult),
      const DeepCollectionEquality().hash(_listOfAddres),
      selectLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      __$$LocationStateImplCopyWithImpl<_$LocationStateImpl>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {final bool isLoading,
      final LocationModel? data,
      final List<LatLng>? listOflocation,
      final dynamic isSearching,
      final List<Datum> listOfSearchResult,
      final List<AddresModel> listOfAddres,
      final bool selectLocation}) = _$LocationStateImpl;

  @override
  bool get isLoading;
  @override
  LocationModel? get data;
  @override
  List<LatLng>? get listOflocation;
  @override
  dynamic get isSearching;
  @override
  List<Datum> get listOfSearchResult;
  @override
  List<AddresModel> get listOfAddres;
  @override
  bool get selectLocation;
  @override
  @JsonKey(ignore: true)
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
