class AppUser {
  AppUser.fromJson(Map<String, dynamic> json) {
    userInfo =
        json['data'] != null ? new UserInfo.fromJson(json['data']) : null;
    token = json['token'];
  }

  AppUser({this.userInfo, this.token});
  UserInfo? userInfo;
  String? token;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.userInfo != null) {
      data['data'] = this.userInfo!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class UserInfo {
  UserInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerify = json['email_verify'];
    profilePhotoPath = json['profile_photo_path'];
    phoneVerify = json['phone_verify'];
    phoneNumber = json['phone_number'];
    status = json['status'];
  }

  UserInfo({
    this.id,
    this.name,
    this.email,
    this.emailVerify,
    this.phoneVerify,
    this.phoneNumber,
    this.profilePhotoPath,
    this.status,
  });
  int? id;
  String? name;
  String? email;
  String? emailVerify;
  String? phoneVerify;
  String? phoneNumber;
  String? profilePhotoPath;
  String? status;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verify'] = this.emailVerify;
    data['phone_verify'] = this.phoneVerify;
    data['phone_number'] = this.phoneNumber;
    data['profile_photo_path'] = this.profilePhotoPath;
    data['status'] = this.status;
    return data;
  }
}
