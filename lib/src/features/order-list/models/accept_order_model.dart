import 'models.dart';

class AcceptOrderModel {

  AcceptOrderModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    ordersData = json['data'] != null ? new OrdersData.fromJson(json['data']) : null;
  }

  AcceptOrderModel({this.status, this.message, this.ordersData});
  bool? status;
  String? message;
  OrdersData? ordersData;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.ordersData != null) {
      data['data'] = this.ordersData!.toJson();
    }
    return data;
  }
}
