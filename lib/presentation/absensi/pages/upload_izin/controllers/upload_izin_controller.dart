import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:file_picker/file_picker.dart';

class UploadIzinController extends GetxController {
  final informationController = TextEditingController();
  RxString selectedFileName = ''.obs;

  Future<void> pickFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null && result.files.isNotEmpty) {
      selectedFileName.value = result.files.single.name;
    }
  }

  @override
  void onClose() {
    informationController.dispose();
    super.onClose();
  }
}
