import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widgets/text_widget.dart';
import 'package:flutter_application_1/utils/thems.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/hangers.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.2),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 60,
                    width: 190,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: TextWidget(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        text: 'Welcome',
                        color: Colors.white,
                        underline: TextDecoration.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: 230,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        TextWidget(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          text: "Shop",
                          color: mainColor,
                          underline: TextDecoration.none,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        TextWidget(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          text: "App",
                          color: Colors.white,
                          underline: TextDecoration.none,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 250,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: mainColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 12,
                        )),
                    onPressed: () {
                      Get.offNamed(Routes.loginScreen);
                    },
                    child: const TextWidget(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      text: 'Get Start',
                      color: Colors.white,
                      underline: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextWidget(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        text: "Don't have an Account?",
                        color: Colors.white,
                        underline: TextDecoration.none,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.offNamed(Routes.signUpScreen);
                        },
                        child: const TextWidget(
                          text: 'Sign Up',
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          underline: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Stack(
//           children: [
//             SizedBox(
//               width: double.infinity,
//               height: double.infinity,
//               child: Expanded(
//                 // child: Image.network(
//                 //   "https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
//                 //   fit: BoxFit.cover,
//                 // ),
//                 // ",",
//                 // fit: BoxFit.cover,
//               ),
//             ),
//             Container(
//               color: Colors.black.withOpacity(0.2),
//               width: double.infinity,
//               height: double.infinity,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const SizedBox(height: 100),
//                   Container(
//                     height: 60,
//                     width: 190,
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.3),
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     child: const Center(
//                         child: TextWidget(
//                             fontSize: 35,
//                             text: "Welcome",
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                             underline: TextDecoration.none)),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Container(
//                     height: 60,
//                     width: 220,
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.3),
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: const [
//                         TextWidget(
//                             fontSize: 35,
//                             text: "Asroo",
//                             fontWeight: FontWeight.bold,
//                             color: mainColor,
//                             underline: TextDecoration.none),
//                         SizedBox(
//                           width: 7,
//                         ),
//                         TextWidget(
//                             fontSize: 35,
//                             text: "Shop",
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                             underline: TextDecoration.none),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 250),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   backgroundColor: mainColor,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 40,
//                     vertical: 12,
//                   )),
//               onPressed: () {
//                 Get.offNamed(Routes.LoginScreen);
//               },
//               child: const TextWidget(
//                   fontSize: 20,
//                   text: "Get Start",
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                   underline: TextDecoration.none),
//             ),
//             const SizedBox(height: 100),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const TextWidget(
//                     fontSize: 18,
//                     text: "Don't have an account?",
//                     fontWeight: FontWeight.normal,
//                     color: Colors.white,
//                     underline: TextDecoration.none),
//                 TextButton(
//                     onPressed: () {
//                       Get.offNamed(Routes.SignScreen);
//                     },
//                     child: const TextWidget(
//                       fontSize: 18,
//                       text: "Sign UP",
//                       fontWeight: FontWeight.normal,
//                       color: Colors.white,
//                       underline: TextDecoration.underline,
//                     )),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
