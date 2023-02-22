import 'package:flutter/material.dart';

class UserStatus {
  UserStatus({
    this.id,
    this.status,
    this.statusColor,
    this.borderColor,
  });
  UserStatus.fromJson(Map<String, dynamic> json) {
    statusColor = json['status_color'];
    id = json['id'];
    status = json['status'];
    borderColor = json['border_color'];
  }
  Color? statusColor;
  int? id;
  String? status;
  Color? borderColor;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status_color'] = this.statusColor;
    data['id'] = this.id;
    data['status'] = this.status;
    data['border_color'] = this.borderColor;
    return data;
  }
}
