class LocationModel {
  List<Datum>? data;
  Links? links;
  Meta? meta;

  LocationModel({
    this.data,
    this.links,
    this.meta,
  });

  // JSON-dan ob'ektga o'tkazish
  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      data: (json['data'] as List?)?.map((e) => Datum.fromJson(e)).toList(),
      links: json['links'] != null ? Links.fromJson(json['links']) : null,
      meta: json['meta'] != null ? Meta.fromJson(json['meta']) : null,
    );
  }

  // Ob'ektdan JSON-ga o'tkazish
  Map<String, dynamic> toJson() {
    return {
      'data': data?.map((e) => e.toJson()).toList(),
      'links': links?.toJson(),
      'meta': meta?.toJson(),
    };
  }
}

class Datum {
  int? id;
  String? slug;
  String? uuid;
  bool? open;
  bool? visibility;
  bool? verify;
  int? deliveryType;
  String? backgroundImg;
  String? logoImg;
  String? status;
  DeliveryTime? deliveryTime;
  LatLong? latLong;
  int? rCount;
  int? rAvg;
  int? minPrice;
  int? maxPrice;
  int? serviceMaxPrice;
  double? distance;
  int? productsCount;
  Translation? translation;
  List<dynamic>? services;
  List<ShopWorkingDay>? shopWorkingDays;
  List<dynamic>? shopClosedDate;

  Datum({
    this.id,
    this.slug,
    this.uuid,
    this.open,
    this.visibility,
    this.verify,
    this.deliveryType,
    this.backgroundImg,
    this.logoImg,
    this.status,
    this.deliveryTime,
    this.latLong,
    this.rCount,
    this.rAvg,
    this.minPrice,
    this.maxPrice,
    this.serviceMaxPrice,
    this.distance,
    this.productsCount,
    this.translation,
    this.services,
    this.shopWorkingDays,
    this.shopClosedDate,
  });

  factory Datum.fromJson(Map<String, dynamic> json) {
    return Datum(
      id: json['id'],
      slug: json['slug'],
      uuid: json['uuid'],
      open: json['open'],
      visibility: json['visibility'],
      verify: json['verify'],
      deliveryType: json['delivery_type'],
      backgroundImg: json['background_img'],
      logoImg: json['logo_img'],
      status: json['status'],
      deliveryTime: json['delivery_time'] != null ? DeliveryTime.fromJson(json['delivery_time']) : null,
      latLong: json['lat_long'] != null ? LatLong.fromJson(json['lat_long']) : null,
      rCount: json['r_count'],
      rAvg: json['r_avg'],
      minPrice: json['min_price'],
      maxPrice: json['max_price'],
      serviceMaxPrice: json['service_max_price'],
      distance: json['distance']?.toDouble(),
      productsCount: json['products_count'],
      translation: json['translation'] != null ? Translation.fromJson(json['translation']) : null,
      services: json['services'],
      shopWorkingDays: (json['shop_working_days'] as List?)?.map((e) => ShopWorkingDay.fromJson(e)).toList(),
      shopClosedDate: json['shop_closed_date'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'slug': slug,
      'uuid': uuid,
      'open': open,
      'visibility': visibility,
      'verify': verify,
      'delivery_type': deliveryType,
      'background_img': backgroundImg,
      'logo_img': logoImg,
      'status': status,
      'delivery_time': deliveryTime?.toJson(),
      'lat_long': latLong?.toJson(),
      'r_count': rCount,
      'r_avg': rAvg,
      'min_price': minPrice,
      'max_price': maxPrice,
      'service_max_price': serviceMaxPrice,
      'distance': distance,
      'products_count': productsCount,
      'translation': translation?.toJson(),
      'services': services,
      'shop_working_days': shopWorkingDays?.map((e) => e.toJson()).toList(),
      'shop_closed_date': shopClosedDate,
    };
  }
}

class DeliveryTime {
  String? to;
  String? from;
  String? type;

  DeliveryTime({this.to, this.from, this.type});

  factory DeliveryTime.fromJson(Map<String, dynamic> json) {
    return DeliveryTime(
      to: json['to'],
      from: json['from'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'to': to,
      'from': from,
      'type': type,
    };
  }
}

class LatLong {
  double? latitude;
  double? longitude;

  LatLong({this.latitude, this.longitude});

  factory LatLong.fromJson(Map<String, dynamic> json) {
    return LatLong(
      latitude: json['latitude']?.toDouble(),
      longitude: json['longitude']?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}

class Translation {
  int? id;
  String? locale;
  String? title;
  String? description;
  String? address;

  Translation({this.id, this.locale, this.title, this.description, this.address});

  factory Translation.fromJson(Map<String, dynamic> json) {
    return Translation(
      id: json['id'],
      locale: json['locale'],
      title: json['title'],
      description: json['description'],
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'locale': locale,
      'title': title,
      'description': description,
      'address': address,
    };
  }
}

class ShopWorkingDay {
  int? id;
  String? day;
  String? from;
  String? to;
  bool? disabled;
  DateTime? createdAt;
  DateTime? updatedAt;

  ShopWorkingDay({
    this.id,
    this.day,
    this.from,
    this.to,
    this.disabled,
    this.createdAt,
    this.updatedAt,
  });

  factory ShopWorkingDay.fromJson(Map<String, dynamic> json) {
    return ShopWorkingDay(
      id: json['id'],
      day: json['day'],
      from: json['from'],
      to: json['to'],
      disabled: json['disabled'],
      createdAt: json['created_at'] != null ? DateTime.parse(json['created_at']) : null,
      updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'day': day,
      'from': from,
      'to': to,
      'disabled': disabled,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }
}

class Links {
  String? first;
  String? last;
  dynamic prev;
  dynamic next;

  Links({this.first, this.last, this.prev, this.next});

  factory Links.fromJson(Map<String, dynamic> json) {
    return Links(
      first: json['first'],
      last: json['last'],
      prev: json['prev'],
      next: json['next'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'first': first,
      'last': last,
      'prev': prev,
      'next': next,
    };
  }
}

class Meta {
  int? currentPage;
  int? from;
  int? lastPage;
  List<Link>? links;
  String? path;
  int? perPage;
  int? to;
  int? total;

  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.links,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  factory Meta.fromJson(Map<String, dynamic> json) {
    return Meta(
      currentPage: json['current_page'],
      from: json['from'],
      lastPage: json['last_page'],
      links: (json['links'] as List?)
          ?.map((e) => Link.fromJson(e))
          .toList(),
      path: json['path'],
      perPage: json['per_page'],
      to: json['to'],
      total: json['total'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'current_page': currentPage,
      'from': from,
      'last_page': lastPage,
      'links': links?.map((e) => e.toJson()).toList(),
      'path': path,
      'per_page': perPage,
      'to': to,
      'total': total,
    };
  }
}

class Link {
  String? url;
  String? label;
  bool? active;

  Link({this.url, this.label, this.active});

  factory Link.fromJson(Map<String, dynamic> json) {
    return Link(
      url: json['url'],
      label: json['label'],
      active: json['active'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'label': label,
      'active': active,
    };
  }
}
