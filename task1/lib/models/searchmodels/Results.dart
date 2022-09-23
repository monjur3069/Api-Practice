import 'Brand.dart';
import 'Charge.dart';
import 'Images.dart';
import 'dynamic.dart';

class Results {
  Results({
      this.id, 
      this.brand, 
      this.image, 
      this.charge, 
      this.images, 
      this.slug, 
      this.productName, 
      this.model, 
      this.commissionType, 
      this.amount, 
      this.tag, 
      this.description, 
      this.note, 
      this.embaddedVideoLink, 
      this.maximumOrder, 
      this.stock, 
      this.isBackOrder, 
      this.specification, 
      this.warranty, 
      this.preOrder, 
      this.productReview, 
      this.isSeller, 
      this.isPhone, 
      this.willShowEmi, 
      this.badge, 
      this.isActive, 
      this.createdAt, 
      this.updatedAt, 
      this.language, 
      this.seller, 
      this.combo, 
      this.createdBy, 
      this.updatedBy, 
      this.category, 
      this.relatedProduct, 
      this.filterValue,});

  Results.fromJson(dynamic json) {
    id = json['id'];
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    image = json['image'];
    charge = json['charge'] != null ? Charge.fromJson(json['charge']) : null;
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
    slug = json['slug'];
    productName = json['product_name'];
    model = json['model'];
    commissionType = json['commission_type'];
    amount = json['amount'];
    tag = json['tag'];
    description = json['description'];
    note = json['note'];
    embaddedVideoLink = json['embadded_video_link'];
    maximumOrder = json['maximum_order'];
    stock = json['stock'];
    isBackOrder = json['is_back_order'];
    specification = json['specification'];
    warranty = json['warranty'];
    preOrder = json['pre_order'];
    productReview = json['product_review'];
    isSeller = json['is_seller'];
    isPhone = json['is_phone'];
    willShowEmi = json['will_show_emi'];
    badge = json['badge'];
    isActive = json['is_active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    language = json['language'];
    seller = json['seller'];
    combo = json['combo'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    category = json['category'] != null ? json['category'].cast<int>() : [];
    if (json['related_product'] != null) {
      relatedProduct = [];
      json['related_product'].forEach((v) {
        relatedProduct?.add(Dynamic.fromJson(v));
      });
    }
    if (json['filter_value'] != null) {
      filterValue = [];
      json['filter_value'].forEach((v) {
        filterValue?.add(Dynamic.fromJson(v));
      });
    }
  }
  int? id;
  Brand? brand;
  String? image;
  Charge? charge;
  List<Images>? images;
  String? slug;
  String? productName;
  String? model;
  String? commissionType;
  String? amount;
  String? tag;
  String? description;
  String? note;
  String? embaddedVideoLink;
  int? maximumOrder;
  int? stock;
  bool? isBackOrder;
  String? specification;
  String? warranty;
  bool? preOrder;
  int? productReview;
  bool? isSeller;
  bool? isPhone;
  bool? willShowEmi;
  dynamic badge;
  bool? isActive;
  String? createdAt;
  String? updatedAt;
  dynamic language;
  String? seller;
  dynamic combo;
  String? createdBy;
  dynamic updatedBy;
  List<int>? category;
  List<dynamic>? relatedProduct;
  List<dynamic>? filterValue;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    if (brand != null) {
      map['brand'] = brand?.toJson();
    }
    map['image'] = image;
    if (charge != null) {
      map['charge'] = charge?.toJson();
    }
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    map['slug'] = slug;
    map['product_name'] = productName;
    map['model'] = model;
    map['commission_type'] = commissionType;
    map['amount'] = amount;
    map['tag'] = tag;
    map['description'] = description;
    map['note'] = note;
    map['embadded_video_link'] = embaddedVideoLink;
    map['maximum_order'] = maximumOrder;
    map['stock'] = stock;
    map['is_back_order'] = isBackOrder;
    map['specification'] = specification;
    map['warranty'] = warranty;
    map['pre_order'] = preOrder;
    map['product_review'] = productReview;
    map['is_seller'] = isSeller;
    map['is_phone'] = isPhone;
    map['will_show_emi'] = willShowEmi;
    map['badge'] = badge;
    map['is_active'] = isActive;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['language'] = language;
    map['seller'] = seller;
    map['combo'] = combo;
    map['created_by'] = createdBy;
    map['updated_by'] = updatedBy;
    map['category'] = category;
    if (relatedProduct != null) {
      map['related_product'] = relatedProduct?.map((v) => v.toJson()).toList();
    }
    if (filterValue != null) {
      map['filter_value'] = filterValue?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}