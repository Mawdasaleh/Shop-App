import 'dart:async';
import 'dart:convert';

import 'package:flutter_application_1/utils/reg_exp.dart';

import '../model/product_model.dart';
import 'package:http/http.dart' as http;

class ProductApi {
  static Future<List<Product>> getProduct() async {
    var response = await http.get(Uri.parse('$baseUrl/products'));
    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          .map((e) => Product.fromJson(e))
          .toList();
    } else {
      //   // print('statuscode= ${response.statusCode}');
      return throw Exception("failed to load product");
    }

    // if (response.statusCode == 200) {
    //   var data = response.body;

    //   var jsonData = jsonDecode(data);
    //   List<Product> productList =
    //       await jsonData.map((e) => Product.fromJson(e)).toList();

    //   return productList;
    //   // return List<Product>.from(jsonData.map((e) => Product.fromJson(e)));
    // } else {
    //   // print('statuscode= ${response.statusCode}');
    //   return throw Exception("failed to load product");
    // }
  }
}
//  List<Users> userList =
//           await jsonDta.map((e) => Users.fromJson(e.toJson())).toList();
//       return userList;

// end erooooooooor
//  new _GrowableList._ofEfficientLengthIterable (dart:core-patch/growable_array.dart:189:27)
//      new _GrowableList.of (dart:core-patch/growable_array.dart:150:28)
//    new List.of (dart:core-patch/array_patch.dart:51:28)
//      ListIterable.toList (dart:_internal/iterable.dart:213:44)
//
//  <asynchronous suspension>











// import 'dart:async';
// import 'dart:convert';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_application_1/model/product_model.dart';
// // import 'package:get/get_connect/http/src/response/response.dart';

// import 'package:http/http.dart' as http;

// class Userservices {
//   Future<List<Users>> getusers() async {
//     http.Response response =
//         await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

//     if (response.statusCode == 200) {
//       String data = response.body;
//       var jsonDta = jsonDecode(data);
//       // return  List<Users>.from(jsonDta.map((e) => Users.fromJson(e)))
//       //     .toList();
//       List<Users> userList =
//           await jsonDta.map((e) => Users.fromJson(e.toJson())).toList();
//       return userList;
//     } else {
//       return throw Exception("failed to load user");
//     }
//   }
// }

//       var jsonDta = jsonDecode(data);
//       List<Users> userList =
//           await jsonDta.map((e) => Users.fromJson(e.toJson())).toList();
//       return userList;
//     } else {
//       return throw Exception("failed to load user");
//     }
//   }
// }
//  List<Map<String, dynamic>> data = json.decode(response.body);
//       List<Users> us = await data.map((e) => Users.fromJson(e)).toList();
//       print(us);
//       return us;
// end error
//  E/flutter ( 2647): #22     GestureBinding._handlePointerDataPacket
// (package:flutter/src/gestures/binding.dart:295:7)
// GestureBinding.dispatchEvent (package:flutter/src/gestures/binding.dart:440:22)

// <asynchronous suspension>

// Image provider: AssetImage(bundle: null, name: "assetsimageslogo.png")
// Image key: AssetBundleImageKey(bundle: PlatformAssetBundle#ea60d(), name: "assetsimageslogo.png",
//   scale: 1.0)
// ════════════════════════════════════════════════════════════════════════════════════════════════════
// The Flutter DevTools debugger and profiler on SM M135F is available at:
// http://127.0.0.1:9101?uri=http://127.0.0.1:59304/A5024R24ohs=/
// I/flutter ( 7426): saving File: '/data/user/0/com.example.flutter_application_1/files/Lato_regular_6e6ed20d655bef45270197c043b98acc546b2455874705cd35adda969c35c2c3.ttf'
// I/flutter ( 7426): saving File: '/data/user/0/com.example.flutter_application_1/files/Lato_700_a09be1c00848f33ba405104a37b0d79d9a9a9ae543accd0e6009532fc5b3d4e0.ttf'

