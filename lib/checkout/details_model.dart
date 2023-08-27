class ProductModel {
  String? name, image, description, sized;
  int? id,price;


  ProductModel(
      {this.name,
        this.image,
        this.description,
this.id,
        this.sized,
        this.price});

  ProductModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }

    name = map['name'];
    image = map['image'];
    description = map['description'];
id=map["id"];
    sized = map['sized'];
    price = map['price'];
  }

  toJson() {
    return {
      'name': name,
      'image': image,
      'description': description,
      'sized': sized,
      'price': price,
      'id':id,
    };
  }
}