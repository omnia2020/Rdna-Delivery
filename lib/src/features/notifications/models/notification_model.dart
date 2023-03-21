class NotificationModel {
  NotificationModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  NotificationModel({this.status, this.message, this.data});
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
      notificationData = <NotificationData>[];
      json['data'].forEach((v) {
        notificationData!.add(new NotificationData.fromJson(v));
      });
    }
    total = json['total'];
    count = json['count'];
    perPage = json['per_page'];
    currentPage = json['current_page'];
    lastPage = json['last_page'];
    countUnread = json['count_unread'];
  }

  Data({
    this.notificationData,
    this.total,
    this.count,
    this.perPage,
    this.currentPage,
    this.lastPage,
    this.countUnread,
  });
  List<NotificationData>? notificationData;
  int? total;
  int? count;
  int? perPage;
  int? currentPage;
  int? lastPage;
  int? countUnread;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.notificationData != null) {
      data['data'] = this.notificationData!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['count'] = this.count;
    data['per_page'] = this.perPage;
    data['current_page'] = this.currentPage;
    data['last_page'] = this.lastPage;
    data['count_unread'] = this.countUnread;
    return data;
  }
}

class NotificationData {
  NotificationData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    icon = json['icon'];
    readAt = json['read_at'];
    order = json['order'];
    assignedMe = json['assigned_me'];
    createdAt = json['created_at'];
  }

  NotificationData({
    this.id,
    this.title,
    this.description,
    this.icon,
    this.readAt,
    this.order,
    this.assignedMe,
    this.createdAt,
  });
  int? id;
  String? title;
  String? description;
  String? icon;
  String? readAt;
  int? order;
  bool? assignedMe;
  String? createdAt;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['icon'] = this.icon;
    data['read_at'] = this.readAt;
    data['order'] = this.order;
    data['assigned_me'] = this.assignedMe;
    data['created_at'] = this.createdAt;
    return data;
  }
}
