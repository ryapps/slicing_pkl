import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformationFieldController extends GetxController {
  final infoController = TextEditingController();
  RxInt textLength = 0.obs;
  RxBool isValid = false.obs;

  void onTextChanged(String text) {
    textLength.value = text.length;
    isValid.value = text.length >= 150;
  }

  @override
  void onClose() {
    infoController.dispose();
    super.onClose();
  }
}
