// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

// import 'dart:convert';

// // List<Product?>? productFromJson(String str) => json.decode(str) == null
// //     ? []
// //     : List<Product?>.from(json.decode(str)!.map((x) => Product.fromJson(x)));

// // String productToJson(List<Product?>? data) => json.encode(
// //     data == null ? [] : List<dynamic>.from(data.map((x) => x!.toJson())));

// class Product {
//   Product({
//     this.id,
//     this.title,
//     this.price,
//     this.description,
//     // this.category,
//     this.image,
//     this.rating,
//   });

//   int? id;
//   String? title;
//   double? price;
//   String? description;
//   // Category? category;
//   String? image;
//   Rating? rating;

//   factory Product.fromJson(Map<String, dynamic> json) => Product(
//         id: json["id"],
//         title: json["title"],
//         price: json["price"].toDouble(),
//         description: json["description"],
//         // category: categoryValues.map[json["category"]],
//         image: json["image"],
//         rating: Rating.fromJson(json["rating"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "title": title,
//         "price": price,
//         "description": description,
//         // "category": categoryValues.reverse![category],
//         "image": image,
//         "rating": rating!.toJson(),
//       };
// }

// // enum Category { MEN_S_CLOTHING, JEWELERY, ELECTRONICS, WOMEN_S_CLOTHING }

// // final categoryValues = EnumValues({
// //   "electronics": Category.ELECTRONICS,
// //   "jewelery": Category.JEWELERY,
// //   "men's clothing": Category.MEN_S_CLOTHING,
// //   "women's clothing": Category.WOMEN_S_CLOTHING
// // });

// class Rating {
//   Rating({
//     this.rate,
//     this.count,
//   });

//   double? rate;
//   int? count;

//   factory Rating.fromJson(Map<String, dynamic> json) => Rating(
//         rate: json["rate"].toDouble(),
//         count: json["count"],
//       );

//   Map<String, dynamic> toJson() => {
//         "rate": rate,
//         "count": count,
//       };
// }

// class EnumValues<T> {
//   Map<String, T> map;
//   Map<T, String>? reverseMap;

//   EnumValues(this.map);

//   Map<T, String>? get reverse {
//     reverseMap ??= map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }
import 'dart:convert';

class Product {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;
  Product(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image,
      this.rating});
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      description: json['description'],
      category: json['category'],
      image: json['image'],
      rating: Rating.fromJson(json['rating']),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'price': price,
        'description': description,
        'category': category,
        'image': image,
        'rating': rating!.toJson(),
      };
}

class Rating {
  double? rate;
  int? count;
  Rating({
    this.rate,
    this.count,
  });
  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      rate: json['rate'].toDouble(),
      count: json['count'],
    );
  }
  Map<String, dynamic> toJson() => {
        'rate': rate,
        'count': count,
      };
}








































// class Product {
//   int id;
//   String title;
//   double price;
//   String description;
//   String category;
//   String image;
//   double rate;
//   int count;
//   Product(
//       {required this.id,
//       required this.title,
//       required this.price,
//       required this.description,
//       required this.category,
//       required this.image,
//       required this.rate,
//       required this.count});
//   factory Product.fromJson(Map<String, dynamic> json) {
//     return Product(
//       id: json['id'],
//       title: json['title'],
//       price: json['price'],
//       description: json['description'],
//       category: json['category'],
//       image: json['image'],
//       rate: json['rating']['rate'].toDouble,
//       count: json['rating']['count'],
//     );
//   }
// }
////////////////////////////////////////

// import 'dart:convert';

// class Product {
//   int? id;
//   String? title;
//   double? price;
//   String? description;
//   String? category;
//   String? image;
//   Rating? rating;
//   Product(
//       {this.id,
//       this.title,
//       this.price,
//       this.description,
//       this.category,
//       this.image,
//       this.rating});
//   factory Product.fromJson(Map<String, dynamic> json) {
//     return Product(
//       id: json['id'] == null ? null : json["id"],
//       title: json['title'] == null ? null : json["title"],
//       price: json['price'] == null ? null : json["price"],
//       description: json['description'] == null ? null : json["description"],
//       category: json['category'] == null ? null : json["category"],
//       image: json['image'] == null ? null : json["image"],
//       rating: json['rating'] == null ? null : Rating.fromJson(json['rating']),
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'id': id,
//         'title': title,
//         'price': price,
//         'description': description,
//         'category': category,
//         'image': image,
//         'rating': rating!.toJson(),
//       };
// }

// class Rating {
//   double? rate;
//   int? count;
//   Rating({
//     this.rate,
//     this.count,
//   });
//   factory Rating.fromJson(Map<String, dynamic> json) {
//     return Rating(
//       rate: json['rate'],
//       count: json['count'],
//     );
//   }
//   Map<String, dynamic> toJson() => {
//         'rate': rate,
//         'count': count,
//       };
// }













































// import 'dart:ffi';




// class Product {
//   Int id;
//   String title;
//   double price;
//   String description;
//   String category;
//   String imageUrl;
//   double rate;
//   int count;

//   Product(
//       {required this.id,
//       required this.title,
//       required this.price,
//       required this.description,
//       required this.category,
//       required this.imageUrl,
//       required this.rate,
//       required this.count});

//   factory Product.fromJson(Map<String, dynamic> jsonData) {
//     return Product(
//       id: jsonData['id'],
//       title: jsonData['title'],
//       price: jsonData['price'],
//       description: jsonData['description'],
//       category: jsonData['category'],
//       imageUrl: jsonData['image'],
//       rate: jsonData['rate'],
//       count: jsonData['count'],
//     );
//   }
// }

// api for user
// https://gorest.co.in/public/v2/users
