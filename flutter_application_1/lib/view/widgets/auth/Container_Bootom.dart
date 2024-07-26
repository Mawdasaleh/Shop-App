import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/thems.dart';
import 'package:flutter_application_1/view/widgets/text_widget.dart';
import 'package:get/get.dart';

class ContainerBootom extends StatelessWidget {
  final String text;
  final String textType;
  final Function() onPressed;
  const ContainerBootom({
    required this.text,
    required this.onPressed,
    required this.textType,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          color: Get.isDarkMode ? pinkClr : mainColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextWidget(
              fontSize: 20,
              text: text,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              underline: TextDecoration.none),
          TextButton(
            onPressed: onPressed,
            child: TextWidget(
                fontSize: 20,
                text: textType,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                underline: TextDecoration.none),
          )
        ],
      ),
    );
  }
}
