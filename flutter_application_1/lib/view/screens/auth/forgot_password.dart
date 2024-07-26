import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/thems.dart';
import 'package:flutter_application_1/view/widgets/auth/sign_button.dart';

import 'package:get/get.dart';

import '../../../logic/controllers/auth_controller.dart';
import '../../../utils/reg_exp.dart';
import '../../widgets/auth/Text_Form_Field.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});
  final controller = Get.find<AuthController>();
  final fromKey = GlobalKey<FormState>();
  final TextEditingController emaillController = TextEditingController();
  String? name;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
          title: Text(
            "Forgot Password",
            style: TextStyle(
              color: Get.isDarkMode ? pinkClr : mainColor,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Get.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
        ),
        body: Form(
          key: fromKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.close_rounded),
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "if you want to recover your account,then please provide your email Id below..",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Image.asset(
                    "assets/images/forgetpass copy.png",
                    width: 200,
                  ),
                  const SizedBox(height: 30),
                  AuthTextFormField(
                    // onSaved: (value) {
                    //   name = value;
                    // },
                    controller: emaillController,
                    obscureText: false,
                    validator: (value) {
                      if (!RegExp(validationEmail).hasMatch(value)) {
                        return "invaled Email";
                      } else {
                        return null;
                      }
                    },
                    prefixIcon: Get.isDarkMode
                        ? Image.asset('assets/images/email.png')
                        : Icon(
                            Icons.email,
                            color: Get.isDarkMode ? pinkClr : mainColor,
                            size: 30,
                          ),
                    suffixIcon: const Text(""),
                    hintText: "Email",
                  ),
                  const SizedBox(height: 30),
                  GetBuilder<AuthController>(builder: (_) {
                    return SignButton(
                      text: 'SEND',
                      onPressed: () {
                        if (fromKey.currentState!.validate()) {
                          controller
                              .resetPassword(emaillController.text.trim());
                        }
                      },
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// keytool -list -v \
// -alias androiddebugkey -keystore %USERPROFILE%\.android\debug.keystore
