import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../logic/controllers/auth_controller.dart';
import '../../../routes/routes.dart';
import '../../../utils/reg_exp.dart';
import '../../../utils/thems.dart';
import '../../widgets/auth/Container_Bootom.dart';
import '../../widgets/auth/Text_Form_Field.dart';
import '../../widgets/auth/sign_button.dart';
import '../../widgets/text_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final fromKey = GlobalKey<FormState>();

  final TextEditingController? emailController = TextEditingController();
  final TextEditingController? passwordController = TextEditingController();

  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
        appBar: AppBar(
          backgroundColor: Get.isDarkMode ? Colors.white : Colors.black,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
                  child: Form(
                    key: fromKey,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            TextWidget(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              text: "LOG",
                              color: Get.isDarkMode ? pinkClr : mainColor,
                              underline: TextDecoration.none,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            TextWidget(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              text: "IN",
                              color:
                                  Get.isDarkMode ? Colors.white : Colors.black,
                              underline: TextDecoration.none,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GetBuilder<AuthController>(
                          builder: (_) {
                            return AuthTextFormField(
                              controller: emailController!,
                              obscureText: false,
                              validator: (value) {
                                if (!RegExp(validationEmail).hasMatch(value)) {
                                  return 'Invalid email';
                                } else {
                                  return null;
                                }
                              },
                              prefixIcon: Get.isDarkMode
                                  ? Icon(
                                      Icons.email,
                                      color:
                                          Get.isDarkMode ? pinkClr : mainColor,
                                      size: 30,
                                    )
                                  : Image.asset(
                                      'assets/images/email.png',
                                      color:
                                          Get.isDarkMode ? pinkClr : mainColor,
                                    ),
                              suffixIcon: const Text(""),
                              hintText: 'Email',
                            );
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GetBuilder<AuthController>(
                          builder: (_) {
                            return AuthTextFormField(
                              controller: passwordController!,
                              obscureText:
                                  controller.isVisibilty ? false : true,
                              validator: (value) {
                                if (value.toString().length < 6) {
                                  return 'Password should be longer or equal to 6 characters';
                                } else {
                                  return null;
                                }
                              },
                              prefixIcon: Get.isDarkMode
                                  ? Icon(
                                      Icons.lock,
                                      color:
                                          Get.isDarkMode ? pinkClr : mainColor,
                                      size: 30,
                                    )
                                  : Image.asset(
                                      'assets/images/lock.png',
                                      color:
                                          Get.isDarkMode ? pinkClr : mainColor,
                                    ),
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                onPressed: () {
                                  controller.visibility();
                                },
                                icon: controller.isVisibilty
                                    ? const Icon(
                                        Icons.visibility_off,
                                        color: Colors.black,
                                      )
                                    : const Icon(
                                        Icons.visibility,
                                        color: Colors.black,
                                      ),
                              ),
                            );
                          },
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.forgotPasswordScreen);
                            },
                            child: TextWidget(
                              text: 'Forgot Password?',
                              fontSize: 14,
                              color:
                                  Get.isDarkMode ? Colors.white : Colors.black,
                              underline: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        GetBuilder<AuthController>(builder: (_) {
                          return SignButton(
                            onPressed: () {
                              if (fromKey.currentState!.validate()) {
                                String? email = emailController!.text.trim();
                                String? password = passwordController!.text;

                                controller.logInUsingFirebase(
                                    email: email, password: password);
                              }
                            },
                            text: "LOG IN",
                          );
                        }),
                        const SizedBox(
                          height: 20,
                        ),
                        TextWidget(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          text: "OR",
                          color: Get.isDarkMode ? Colors.white : Colors.black,
                          underline: TextDecoration.none,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GetBuilder<AuthController>(builder: (_) {
                              return InkWell(
                                onTap: () {
                                  controller.faceBookSignUpApp();
                                },
                                child: Image.asset(
                                  "assets/images/facebook.png",
                                ),
                              );
                            }),
                            const SizedBox(
                              width: 10,
                            ),
                            GetBuilder<AuthController>(builder: (_) {
                              return InkWell(
                                onTap: () {
                                  controller.googleSinUpApp();
                                },
                                child: Image.asset(
                                  "assets/images/google.png",
                                ),
                              );
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ContainerBootom(
                text: "Don't have an Account? ",
                textType: "Sign up",
                onPressed: () {
                  Get.offNamed(Routes.signUpScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
