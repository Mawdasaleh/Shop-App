// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/logic/controllers/auth_controller.dart';
import 'package:flutter_application_1/utils/thems.dart';
import 'package:flutter_application_1/view/widgets/text_widget.dart';
import 'package:get/get.dart';

class CheckWidget extends StatelessWidget {
  CheckWidget({super.key});
  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (_) {
      return Row(
        children: [
          InkWell(
            onTap: () {
              controller.checkBox();
            },
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: controller.isCheckBox
                  ? Get.isDarkMode
                      ? Image.asset('assets/images/check.png')
                      : const Icon(
                          Icons.done,
                          color: pinkClr,
                          size: 30,
                        )
                  : Container(),
              //
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Row(
            children: [
              TextWidget(
                  fontSize: 16,
                  text: "I accept ",
                  fontWeight: FontWeight.normal,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                  underline: TextDecoration.none),
              TextWidget(
                  fontSize: 16,
                  text: "terms & conditions",
                  fontWeight: FontWeight.normal,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                  underline: TextDecoration.underline),
            ],
          )
        ],
      );
    });
  }
}
