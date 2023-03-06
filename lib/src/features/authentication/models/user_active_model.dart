
import 'models.dart';

class UserActiveModel {
  UserActiveModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  UserActiveModel({this.status, this.message, this.data});
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
    id = json['id'];
    start = json['start'];
    end = json['end'];
    admin = json['admin'] != null ? new UserInfo.fromJson(json['admin']) : null;
  }

  Data({this.id, this.start, this.end, this.admin});
  int? id;
  String? start;
  String? end;
  UserInfo? admin;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['start'] = this.start;
    data['end'] = this.end;
    if (this.admin != null) {
      data['admin'] = this.admin!.toJson();
    }
    return data;
  }
}
