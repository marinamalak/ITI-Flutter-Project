
import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  final List<Product>? products;
  final int? total;
  final int? skip;
  final int? limit;

  ProductModel({
    this.products,
    this.total,
    this.skip,
    this.limit,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    products: json["products"] == null ? [] : List<Product>.from(json["products"]!.map((x) => Product.fromJson(x))),
    total: json["total"],
    skip: json["skip"],
    limit: json["limit"],
  );

  Map<String, dynamic> toJson() => {
    "products": products == null ? [] : List<dynamic>.from(products!.map((x) => x.toJson())),
    "total": total,
    "skip": skip,
    "limit": limit,
  };
}

class Product {
  final int? id;
  final String? title;
  final Category? category;
  final double? price;
  final String? thumbnail;
  final String? description;

  Product({
    this.id,
    this.title,
    this.category,
    this.price,
    this.thumbnail,
    this.description,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    title: json["title"],
    category: categoryValues.map[json["category"]]!,
    price: json["price"]?.toDouble(),
    thumbnail: json["thumbnail"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "category": categoryValues.reverse[category],
    "price": price,
    "thumbnail": thumbnail,
    "description": description,
  };
}

enum Category {
  BEAUTY,
  FRAGRANCES,
  FURNITURE,
  GROCERIES
}

final categoryValues = EnumValues({
  "beauty": Category.BEAUTY,
  "fragrances": Category.FRAGRANCES,
  "furniture": Category.FURNITURE,
  "groceries": Category.GROCERIES
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
