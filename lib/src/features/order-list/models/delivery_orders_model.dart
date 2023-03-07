class DeliveryOrdersModel {
  DeliveryOrdersModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  DeliveryOrdersModel({this.status, this.message, this.data});
  bool? status;
  String? message;
  Data? data;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  Data.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      ordersData = <OrdersData>[];
      json['data'].forEach((v) {
        ordersData!.add(new OrdersData.fromJson(v));
      });
    }
    total = json['total'];
    count = json['count'];
    perPage = json['per_page'];
    currentPage = json['current_page'];
    lastPage = json['last_page'];
  }

  Data(
      {this.ordersData,
      this.total,
      this.count,
      this.perPage,
      this.currentPage,
      this.lastPage});
  List<OrdersData>? ordersData;
  int? total;
  int? count;
  int? perPage;
  int? currentPage;
  int? lastPage;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ordersData != null) {
      data['data'] = this.ordersData!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['count'] = this.count;
    data['per_page'] = this.perPage;
    data['current_page'] = this.currentPage;
    data['last_page'] = this.lastPage;
    return data;
  }
}

class OrdersData {
  OrdersData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uniqueId = json['unique_id'];
    total = json['total'];
    totalAfterDiscount = json['total_after_discount'];
    productsCount = json['products_count'];
    subcategoriesCount = json['subcategories_count'];
    checkoutAt = json['checkout_at'];
    confirmedAt = json['confirmed_at'];
    pickedAt = json['picked_at'];
    fulfillmentId = json['fulfillment_id'];
    deliveryManId = json['delivery_man_id'];
    deliveryToAddress = json['delivery_to_address'];
    deliveryToCity = json['delivery_to_city'];
    pickedByDeliveryAt = json['picked_by_delivery_at'];
    deliveredReportAt = json['delivered_report_at'];
    deliveredReportNote = json['delivered_report_note'];
  }

  OrdersData({
    this.id,
    this.uniqueId,
    this.total,
    this.totalAfterDiscount,
    this.productsCount,
    this.subcategoriesCount,
    this.checkoutAt,
    this.confirmedAt,
    this.pickedAt,
    this.fulfillmentId,
    this.deliveryManId,
    this.deliveryToAddress,
    this.deliveryToCity,
    this.pickedByDeliveryAt,
    this.deliveredReportAt,
    this.deliveredReportNote,
  });
  int? id;
  String? uniqueId;
  num? total;
  num? totalAfterDiscount;
  int? productsCount;
  int? subcategoriesCount;
  String? checkoutAt;
  String? confirmedAt;
  String? pickedAt;
  int? fulfillmentId;
  int? deliveryManId;
  String? deliveryToAddress;
  String? deliveryToCity;
  String? pickedByDeliveryAt;
  String? deliveredReportAt;
  String? deliveredReportNote;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['unique_id'] = this.uniqueId;
    data['total'] = this.total;
    data['total_after_discount'] = this.totalAfterDiscount;
    data['products_count'] = this.productsCount;
    data['subcategories_count'] = this.subcategoriesCount;
    data['checkout_at'] = this.checkoutAt;
    data['confirmed_at'] = this.confirmedAt;
    data['picked_at'] = this.pickedAt;
    data['fulfillment_id'] = this.fulfillmentId;
    data['delivery_man_id'] = this.deliveryManId;
    data['delivery_to_address'] = this.deliveryToAddress;
    data['delivery_to_city'] = this.deliveryToCity;
    data['picked_by_delivery_at'] = this.pickedByDeliveryAt;
    data['delivered_report_at'] = this.deliveredReportAt;
    data['delivered_report_note'] = this.deliveredReportNote;
    return data;
  }
}
