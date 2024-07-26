import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/thems.dart';
import 'package:flutter_application_1/view/widgets/text_widget.dart';
import 'package:get/get.dart';

class SignButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const SignButton({
    required this.text,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: Get.isDarkMode ? pinkClr : mainColor,
          minimumSize: Size(360, 50)),
      child: TextWidget(
          fontSize: 18,
          text: text,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          underline: TextDecoration.none),
    );
  }
}
