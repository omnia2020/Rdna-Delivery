class LogoutModel {
  LogoutModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = <Null>[];
  }

  LogoutModel({this.status, this.message, this.data});
  bool? status;
  String? message;
  List? data;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['data'] = this.data;
    return data;
  }
}
