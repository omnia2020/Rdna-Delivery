class SingleOrderDetails {

  SingleOrderDetails.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new OrderDetailsInfo.fromJson(json['data']) : null;
  }

  SingleOrderDetails({this.status, this.message, this.data});
  bool? status;
  String? message;
  OrderDetailsInfo? data;

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

class OrderDetailsInfo {

  OrderDetailsInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    address = json['address'];
    home = json['home'];
    flat = json['flat'];
    floor = json['floor'];
    addressNotes = json['address_notes'];
    paymentMethod = json['payment_method'];
    total = json['total'];
    totalAfterDiscount = json['total_after_discount'];
    subtotalPrice = json['subtotal_price'];
    subtotalPriceAfterDiscount = json['subtotal_price_after_discount'];
    if (json['order_items'] != null) {
      orderItems = <OrderItems>[];
      json['order_items'].forEach((v) {
        orderItems!.add(new OrderItems.fromJson(v));
      });
    }
  }

  OrderDetailsInfo(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.address,
      this.home,
      this.flat,
      this.floor,
      this.addressNotes,
      this.paymentMethod,
      this.total,
      this.totalAfterDiscount,
      this.subtotalPrice,
      this.subtotalPriceAfterDiscount,
      this.orderItems});
  int? id;
  String? name;
  String? email;
  String? phone;
  String? address;
  String? home;
  String? flat;
  String? floor;
  String? addressNotes;
  String? paymentMethod;
  num? total;
  num? totalAfterDiscount;
  num? subtotalPrice;
  num? subtotalPriceAfterDiscount;
  List<OrderItems>? orderItems;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['home'] = this.home;
    data['flat'] = this.flat;
    data['floor'] = this.floor;
    data['address_notes'] = this.addressNotes;
    data['payment_method'] = this.paymentMethod;
    data['total'] = this.total;
    data['total_after_discount'] = this.totalAfterDiscount;
    data['subtotal_price'] = this.subtotalPrice;
    data['subtotal_price_after_discount'] = this.subtotalPriceAfterDiscount;
    if (this.orderItems != null) {
      data['order_items'] = this.orderItems!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OrderItems {

  OrderItems.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  OrderItems({this.id, this.title, this.slug, this.products});
  int? id;
  String? title;
  String? slug;
  List<Products>? products;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['slug'] = this.slug;
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    unit = json['unit'];
    price = json['price'];
    priceAfterDiscount = json['price_after_discount'];
    discountedPrice = json['discounted_price'];
    discountedLabel = json['discounted_label'];
    factor = json['factor'];
    quantity = json['quantity'];
    image = json['image'];
    brand = json['brand'];
    slug = json['slug'];
  }

  Products(
      {this.id,
      this.title,
      this.unit,
      this.price,
      this.priceAfterDiscount,
      this.discountedPrice,
      this.discountedLabel,
      this.factor,
      this.quantity,
      this.image,
      this.brand,
      this.slug});
  int? id;
  String? title;
  String? unit;
  num? price;
  num? priceAfterDiscount;
  String? discountedPrice;
  String? discountedLabel;
  int? factor;
  int? quantity;
  String? image;
  String? brand;
  String? slug;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['unit'] = this.unit;
    data['price'] = this.price;
    data['price_after_discount'] = this.priceAfterDiscount;
    data['discounted_price'] = this.discountedPrice;
    data['discounted_label'] = this.discountedLabel;
    data['factor'] = this.factor;
    data['quantity'] = this.quantity;
    data['image'] = this.image;
    data['brand'] = this.brand;
    data['slug'] = this.slug;
    return data;
  }
}
