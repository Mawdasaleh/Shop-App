import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_application_1/model/category_model.dart';
import 'package:flutter_application_1/utils/reg_exp.dart';

import '../model/product_model.dart';

class CategoryServices {
  static Future<List<String>> getCategory() async {
    var response = await http.get(Uri.parse('$baseUrl/products/categories'));

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return categoryModelFromJson(jsonData);
    } else {
      return throw Exception("Failed to load product");
    }
  }
}

class AllCategorySercvises {
  static Future<List<Product>> getAllCatehory(String categoryNames) async {
    var response =
        await http.get(Uri.parse('$baseUrl/products/category/$categoryNames'));

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return (json.decode(response.body) as List)
          .map((e) => Product.fromJson(e))
          .toList();
    } else {
      return throw Exception("Failed to load product");
    }
  }
}
