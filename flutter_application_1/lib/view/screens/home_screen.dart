import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product_model.dart';
import 'package:flutter_application_1/utils/thems.dart';
import 'package:flutter_application_1/view/widgets/text_widget.dart';
import 'package:get/get.dart';
import '../../services/product_services.dart';
import '../widgets/home/card_items.dart';
import '../widgets/home/search_text_widget.dart';
import 'dart:async';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                  color: Get.isDarkMode ? darkGreyClr : mainColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                        fontSize: 25,
                        text: "Find Your",
                        fontWeight: FontWeight.bold,
                        color: Get.isDarkMode ? Colors.white : Colors.black,
                        underline: TextDecoration.none),
                    const SizedBox(
                      height: 5,
                    ),
                    TextWidget(
                        fontSize: 28,
                        text: "Product",
                        fontWeight: FontWeight.bold,
                        color: Get.isDarkMode ? Colors.white : Colors.black,
                        underline: TextDecoration.none),
                    const SizedBox(
                      height: 20,
                    ),
                    SearchFormText(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: TextWidget(
                    fontSize: 20,
                    text: "Categories",
                    fontWeight: FontWeight.w500,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                    underline: TextDecoration.none),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CardItems(),
          ],
        ),
      ),
      // child: Text(
      //   "HomeScreen",
      //   style: TextStyle(color: Colors.white),
      // ),
    );
  }
}
    // return SafeArea(
    //   child: Scaffold(
    //     backgroundColor: Colors.white,
    //     body: Center(
    //       child: TextButton(
    //         onPressed: () async {
    //           ProductApi productApi = ProductApi();
    //           var pro = await ProductApi.getProduct();
    //           // List<Users> users = [];
    //           // users.addAll(user); this
    //           // user = await userservices.getusers();
    //           for (var i in pro) {
    //             print(i.category);
    //           }
    //         },
    //         child: const Text("fetch user "),
    //       ),
    //     ),
    //   ),
    // );
  // }
// }
// flutter/runtime/dart_vm_initializer.cc(///////////////////////////////
//    
// Userservices.getusers (package:flutter_application_1/services/product_services.dart:21:64)        
// E/flutter (23570): <asynchronous suspension>
// ListIterable.toList (dart:_internal/iterable.dart:213:44)
// E/flutter (23570): #9      HomeScreen.build.<anonymous closure> (package:flutter_application_1/view/screens/home_screen.dart:
//  Column(
//           children: [
//             Container(
//               width: double.infinity,
//               height: 180,
//               decoration: BoxDecoration(
//                   color: Get.isDarkMode ? darkGreyClr : mainColor,
//                   borderRadius: const BorderRadius.only(
//                       bottomLeft: Radius.circular(20),
//                       bottomRight: Radius.circular(20))),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 20, right: 20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: const [
//                     TextWidget(
//                         fontSize: 25,
//                         text: "Find Your",
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                         underline: TextDecoration.none),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     TextWidget(
//                         fontSize: 28,
//                         text: "INSPIRATION",
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                         underline: TextDecoration.none),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     SearchFormText(),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: Align(
//                 alignment: Alignment.topLeft,
//                 child: TextWidget(
//                     fontSize: 20,
//                     text: "Categories",
//                     fontWeight: FontWeight.w500,
//                     color: Get.isDarkMode ? Colors.white : Colors.black,
//                     underline: TextDecoration.none),
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             // CardItems(),

//           ],
//         ),
//       ),
//       child: Text(
//         "HomeScreen",
//         style: TextStyle(color: Colors.white),
//       ),
//     );
//   }
// }
