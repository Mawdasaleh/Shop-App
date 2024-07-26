import 'package:flutter/material.dart';
import 'package:flutter_application_1/logic/controllers/auth_controller.dart';
import 'package:flutter_application_1/utils/thems.dart';
import 'package:flutter_application_1/view/widgets/text_widget.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:flutter_application_1/utils/reg_exp.dart';
import '../../widgets/auth/CheckWidget.dart';
import '../../widgets/auth/Container_Bootom.dart';
import '../../widgets/auth/Text_Form_Field.dart';
import '../../widgets/auth/sign_button.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final fromKey = GlobalKey<FormState>();

  final TextEditingController? _nameController = TextEditingController();
  final TextEditingController? _emailController = TextEditingController();
  final TextEditingController? _passwordController = TextEditingController();

  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Get.isDarkMode ? Colors.white : Colors.black,
          elevation: 0,
        ),
        backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
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
                              text: "SIGN",
                              color: Get.isDarkMode ? pinkClr : mainColor,
                              underline: TextDecoration.none,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            TextWidget(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              text: "UP",
                              color:
                                  Get.isDarkMode ? Colors.white : Colors.black,
                              underline: TextDecoration.none,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        GetBuilder<AuthController>(
                          builder: (_) {
                            return AuthTextFormField(
                              controller: _nameController!,
                              obscureText: false,
                              validator: (value) {
                                if (value.toString().length <= 2 ||
                                    !RegExp(validationName).hasMatch(value)) {
                                  return 'Enter valid name';
                                } else {
                                  return null;
                                }
                              },
                              prefixIcon: Get.isDarkMode
                                  ? Icon(
                                      Icons.person,
                                      color:
                                          Get.isDarkMode ? pinkClr : mainColor,
                                      size: 30,
                                    )
                                  : Image.asset(
                                      'assets/images/user.png',
                                      color:
                                          Get.isDarkMode ? pinkClr : mainColor,
                                    ),
                              suffixIcon: const Text(""),
                              hintText: 'User Name',
                            );
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GetBuilder<AuthController>(
                          builder: (_) {
                            return AuthTextFormField(
                              // onSaved: (value) {
                              //  String? email = value;
                              // },
                              controller: _emailController!,
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
                              // onSaved: (value) {
                              //   password = value;
                              // },
                              controller: _passwordController!,
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
                        const SizedBox(
                          height: 50,
                        ),
                        CheckWidget(),
                        const SizedBox(
                          height: 50,
                        ),
                        GetBuilder<AuthController>(
                          builder: (_) {
                            return SignButton(
                              onPressed: () {
                                if (controller.isCheckBox == false) {
                                  Get.snackbar(
                                    "Check Box",
                                    "Please, Accept terms & conditions",
                                    snackPosition: SnackPosition.BOTTOM,
                                    backgroundColor:
                                        Get.isDarkMode ? pinkClr : mainColor,
                                    colorText: Colors.white,
                                  );
                                } else if (fromKey.currentState!.validate()) {
                                  String name = _nameController!.text.trim();
                                  String email = _emailController!.text.trim();
                                  String password = _passwordController!.text;

                                  controller.signUpUsingFirebase(
                                    name: name,
                                    email: email,
                                    password: password,
                                  );

                                  controller.isCheckBox = true;
                                }
                              },
                              text: "SIGN UP",
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ContainerBootom(
                text: 'Already have an Account? ',
                textType: "Log in",
                onPressed: () {
                  Get.offNamed(Routes.loginScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
