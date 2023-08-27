import 'dart:convert';

class CartProductModel {
  String? name, image;
  int? quantity,id,price;

  CartProductModel({this.name, this.image, this.price, this.quantity,this.id});

  CartProductModel.fromJson(Map<dynamic, dynamic> map) {
    if (map != null) {
      return;
    }
    id=map["id"];
    name = map["name"];
    image = map["image"];
    price = map["price"];
    quantity = map["quantity"];
  }
  toJson(){
    return{
      'id':id,
      'name':name,
      'image':image,
      'price':price,
      'quantity':quantity,

    };

  }
}
